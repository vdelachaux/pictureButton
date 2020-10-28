C_OBJECT:C1216($e)

$e:=FORM Event:C1606

Case of 
		  //______________________________________________________
	: ($e.code=On Load:K2:1)
		
		C_PICTURE:C286(vPicture)
		
		OBJECT SET FORMAT:C236(*;"pictureButton";";;vPicture")
		Form:C1466.images:=Folder:C1567("/RESOURCES/").files().query("extension = :1";".png").sort()
		LISTBOX SELECT ROW:C912(*;"files";1)
		
		  //______________________________________________________
	: ($e.code=On Timer:K2:25)
		
		SET TIMER:C645(0)
		READ PICTURE FILE:C678(String:C10(Form:C1466.current.platformPath);vPicture)
		
		  //______________________________________________________
	Else 
		
		  // A "Case of" statement should never omit "Else"
		
		  //______________________________________________________
End case 
