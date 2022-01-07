
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERASE ;
 scalar_t__ OFF ;
 scalar_t__ ON ;
 int fputs (char const*,int ) ;
 int free (char*) ;
 scalar_t__ header_status ;
 int lastline ;
 int putchar (char) ;
 int stdout ;
 char* trim_header (char const*) ;

void
i_header(const char *text)
{
    char *s;

    s = trim_header(text);
    if (s != ((void*)0))
 text = s;

    if (header_status == ON)
    {
 putchar('\n');
 fputs(text, stdout);
 lastline++;
    }
    else if (header_status == ERASE)
    {
 header_status = OFF;
    }
    free(s);
}
