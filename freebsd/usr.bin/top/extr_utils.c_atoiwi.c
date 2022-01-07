
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Infinity ;
 int Invalid ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;
 scalar_t__ strtol (char const*,int *,int) ;

int
atoiwi(const char *str)
{
    size_t len;

    len = strlen(str);
    if (len != 0)
    {
 if (strncmp(str, "infinity", len) == 0 ||
     strncmp(str, "all", len) == 0 ||
     strncmp(str, "maximum", len) == 0)
 {
     return(Infinity);
 }
 else if (str[0] == '-')
 {
     return(Invalid);
 }
 else
 {
  return((int)strtol(str, ((void*)0), 10));
 }
    }
    return(0);
}
