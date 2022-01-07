
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Header_lines ;
 int Largest ;
 int * calloc (int,int ) ;
 int free (int *) ;
 int screen_length ;
 int screen_width ;
 int * screenbuf ;
 scalar_t__ smart_terminal ;

int
display_resize(void)
{
    int lines;


    if (screenbuf != ((void*)0))
    {
 free(screenbuf);
    }



    lines = smart_terminal ? screen_length - Header_lines : 1;

    if (lines < 0)
 lines = 0;


    screenbuf = calloc(lines, screen_width);
    if (screenbuf == ((void*)0))
    {

 return(-1);
    }



    return(smart_terminal ? lines : Largest);
}
