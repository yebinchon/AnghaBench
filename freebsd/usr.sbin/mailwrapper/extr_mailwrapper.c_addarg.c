
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arglist {int argc; int maxc; int ** argv; } ;


 int EX_TEMPFAIL ;
 int err (int ,char*) ;
 int ** realloc (int **,int) ;
 int * strdup (char const*) ;

__attribute__((used)) static void
addarg(struct arglist *al, const char *arg)
{

 if (al->argc == al->maxc) {
  al->maxc <<= 1;
  al->argv = realloc(al->argv, al->maxc * sizeof(char *));
  if (al->argv == ((void*)0))
   err(EX_TEMPFAIL, "realloc");
 }
 if (arg == ((void*)0))
  al->argv[al->argc++] = ((void*)0);
 else if ((al->argv[al->argc++] = strdup(arg)) == ((void*)0))
  err(EX_TEMPFAIL, "strdup");
}
