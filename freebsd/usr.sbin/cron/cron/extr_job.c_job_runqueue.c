
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int u; int e; } ;
typedef TYPE_1__ job ;


 int do_command (int ,int ) ;
 int free (TYPE_1__*) ;
 TYPE_1__* jhead ;
 int * jtail ;

int
job_runqueue()
{
 register job *j, *jn;
 register int run = 0;

 for (j=jhead; j; j=jn) {
  do_command(j->e, j->u);
  jn = j->next;
  free(j);
  run++;
 }
 jhead = jtail = ((void*)0);
 return run;
}
