
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty {int dummy; } ;
struct nmdmpart {TYPE_1__* np_other; } ;
struct TYPE_2__ {int np_task; } ;


 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;
 struct nmdmpart* tty_softc (struct tty*) ;

__attribute__((used)) static void
nmdm_inwakeup(struct tty *tp)
{
 struct nmdmpart *np = tty_softc(tp);


 taskqueue_enqueue(taskqueue_swi, &np->np_other->np_task);
}
