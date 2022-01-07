
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char*,int ) ;
 scalar_t__ lastline ;
 int lineindex (int) ;
 int memset (char*,int ,int) ;
 int putchar (char) ;
 int screen_width ;
 char* screenbuf ;
 scalar_t__ smart_terminal ;
 int stdout ;
 char* stpcpy (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ y_procs ;

void
i_process(int line, char *thisline)
{
    char *p;
    char *base;


    while (lastline < y_procs + line)
    {
 putchar('\n');
 lastline++;
    }


    int len = strlen(thisline);
    if (screen_width < len)
    {
 thisline[screen_width] = '\0';
    }


    fputs(thisline, stdout);


    base = smart_terminal ? screenbuf + lineindex(line) : screenbuf;
    p = stpcpy(base, thisline);


    if (p - base < screen_width)
    {
 memset(p, 0, screen_width - (p - base));
    }
}
