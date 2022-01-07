
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Header_lines ;
 int Move_to (int ,int) ;
 int fputs (char*,int ) ;
 int last_hi ;
 int lastline ;
 int line_update (char*,char*,int ,int) ;
 size_t lineindex (int) ;
 int memset (char*,int ,int) ;
 int putchar (char) ;
 int screen_width ;
 char* screenbuf ;
 int stdout ;
 char* stpcpy (char*,char*) ;
 int strlen (char*) ;

void
u_process(int line, char *newline)
{
    char *optr;
    int screen_line = line + Header_lines;
    char *bufferline;


    bufferline = &screenbuf[lineindex(line)];


    int len = strlen(newline);
    if (screen_width < len)
    {
 newline[screen_width] = '\0';
    }


    if (line >= last_hi)
    {


 if (screen_line - lastline == 1)
 {
     putchar('\n');
     lastline++;
 }
 else
 {
     Move_to(0, screen_line);
     lastline = screen_line;
 }


 fputs(newline, stdout);


 optr = stpcpy(bufferline, newline);


 if (optr - bufferline < screen_width)
 {
     memset(optr, 0, screen_width - (optr - bufferline));
 }
    }
    else
    {
 line_update(bufferline, newline, 0, line + Header_lines);
    }
}
