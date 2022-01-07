
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int
str_addarg(char str[], int len, char arg[], bool first)
{
    int arglen;

    arglen = strlen(arg);
    if (!first)
    {
 arglen += 2;
    }
    if (len <= arglen)
    {
 return(0);
    }
    if (!first)
    {
 strcat(str, ", ");
    }
    strcat(str, arg);
    return(len - arglen);
}
