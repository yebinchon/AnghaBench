
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char) ;
 scalar_t__ isspace (char) ;

__attribute__((used)) static int
scanint(char *str, int *intp)
{
    int val = 0;
    char ch;



    if (*str == '\0')
    {
 return(-1);
    }

    while ((ch = *str++) != '\0')
    {
 if (isdigit(ch))
 {
     val = val * 10 + (ch - '0');
 }
 else if (isspace(ch))
 {
     break;
 }
 else
 {
     return(-1);
 }
    }
    *intp = val;
    return(0);
}
