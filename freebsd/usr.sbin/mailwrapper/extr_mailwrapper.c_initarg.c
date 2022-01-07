
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arglist {int maxc; int * argv; scalar_t__ argc; } ;


 int EX_TEMPFAIL ;
 int * calloc (int,int) ;
 int err (int ,char*) ;

__attribute__((used)) static void
initarg(struct arglist *al)
{
 al->argc = 0;
 al->maxc = 10;
 if ((al->argv = calloc(al->maxc, sizeof(char *))) == ((void*)0))
  err(EX_TEMPFAIL, "calloc");
}
