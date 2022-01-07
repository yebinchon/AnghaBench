
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcopy (char*,char*,int) ;
 char* salloc (int) ;
 int strlen (char*) ;

__attribute__((used)) static char *
save2str(char *str, char *old)
{
 char *new;
 int newsize = strlen(str) + 1;
 int oldsize = old ? strlen(old) + 1 : 0;

 if ((new = salloc(newsize + oldsize)) != ((void*)0)) {
  if (oldsize) {
   bcopy(old, new, oldsize);
   new[oldsize - 1] = ' ';
  }
  bcopy(str, new + oldsize, newsize);
 }
 return (new);
}
