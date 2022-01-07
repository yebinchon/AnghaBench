
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_appends {int dummy; } ;
typedef int regmatch_t ;


 int appendnum ;
 int * appends ;
 int ** compile_stream (int *) ;
 int err (int,char*) ;
 int fixuplabel (int ,int *) ;
 void* malloc (int) ;
 int * match ;
 int maxnsub ;
 int prog ;
 int uselabel () ;

void
compile(void)
{
 *compile_stream(&prog) = ((void*)0);
 fixuplabel(prog, ((void*)0));
 uselabel();
 if (appendnum == 0)
  appends = ((void*)0);
 else if ((appends = malloc(sizeof(struct s_appends) * appendnum)) ==
     ((void*)0))
  err(1, "malloc");
 if ((match = malloc((maxnsub + 1) * sizeof(regmatch_t))) == ((void*)0))
  err(1, "malloc");
}
