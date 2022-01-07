
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcopy (char*,char*,int) ;
 char* salloc (int) ;
 int strlen (char*) ;

char *
savestr(char *str)
{
 char *new;
 int size = strlen(str) + 1;

 if ((new = salloc(size)) != ((void*)0))
  bcopy(str, new, size);
 return (new);
}
