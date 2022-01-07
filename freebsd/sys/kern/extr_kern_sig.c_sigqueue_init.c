
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct proc {int dummy; } ;
struct TYPE_3__ {int sq_flags; struct proc* sq_proc; int sq_list; int sq_ptrace; int sq_kill; int sq_signals; } ;
typedef TYPE_1__ sigqueue_t ;


 int SIGEMPTYSET (int ) ;
 int SQ_INIT ;
 int TAILQ_INIT (int *) ;

void
sigqueue_init(sigqueue_t *list, struct proc *p)
{
 SIGEMPTYSET(list->sq_signals);
 SIGEMPTYSET(list->sq_kill);
 SIGEMPTYSET(list->sq_ptrace);
 TAILQ_INIT(&list->sq_list);
 list->sq_proc = p;
 list->sq_flags = SQ_INIT;
}
