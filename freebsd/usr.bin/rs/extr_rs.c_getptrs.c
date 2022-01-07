
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int allocsize ;
 char** elem ;
 char** endelem ;
 int err (int,char*) ;
 scalar_t__ realloc (char**,int) ;

__attribute__((used)) static char **
getptrs(char **sp)
{
 char **p;

 allocsize += allocsize;
 p = (char **)realloc(elem, allocsize * sizeof(char *));
 if (p == ((void*)0))
  err(1, "no memory");

 sp += (p - elem);
 endelem = (elem = p) + allocsize;
 return(sp);
}
