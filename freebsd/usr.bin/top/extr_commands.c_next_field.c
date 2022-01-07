
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

__attribute__((used)) static char *
next_field(char *str)
{
    if ((str = strchr(str, ' ')) == ((void*)0))
    {
 return(((void*)0));
    }
    *str = '\0';
    while (*++str == ' ') ;



    return(*str == '\0' ? ((void*)0) : str);
}
