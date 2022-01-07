
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,char const*,...) ;

char *
character(int c)
{
    static char string[10];
    const char *meta;

    meta = (c & 0x80) ? "M-" : "";
    c &= 0x7F;

    if (c < 32)
 sprintf(string, "%s^%c", meta, (int)c + '@');
    else if (c == 127)
 sprintf(string, "%s^?", meta);
    else
 sprintf(string, "%s%c", meta, c);

    return (string);
}
