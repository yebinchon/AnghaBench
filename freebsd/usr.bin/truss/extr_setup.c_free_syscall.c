
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {size_t nargs; int * s_args; } ;
struct threadinfo {scalar_t__ in_syscall; TYPE_1__ cs; } ;


 int free (int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
free_syscall(struct threadinfo *t)
{
 u_int i;

 for (i = 0; i < t->cs.nargs; i++)
  free(t->cs.s_args[i]);
 memset(&t->cs, 0, sizeof(t->cs));
 t->in_syscall = 0;
}
