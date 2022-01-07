
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct nmdmpart {int np_task; } ;


 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;
 struct nmdmpart* tty_softc (struct tty*) ;

__attribute__((used)) static void
nmdm_outwakeup(struct tty *tp)
{
 struct nmdmpart *np = tty_softc(tp);


 taskqueue_enqueue(taskqueue_swi, &np->np_task);
}
