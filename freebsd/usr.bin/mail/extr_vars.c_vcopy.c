
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcopy (char const*,char*,int) ;
 int err (int,char*) ;
 char* malloc (unsigned int) ;
 int strlen (char const*) ;

char *
vcopy(const char *str)
{
 char *new;
 unsigned len;

 if (*str == '\0')
  return ("");
 len = strlen(str) + 1;
 if ((new = malloc(len)) == ((void*)0))
  err(1, "Out of memory");
 bcopy(str, new, (int)len);
 return (new);
}
