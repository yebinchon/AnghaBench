
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm_selinfo {scalar_t__ kqueue_users; int ntfytask; int ntfytq; int si; } ;


 int PI_NET ;
 int selwakeuppri (int *,int ) ;
 int taskqueue_enqueue (int ,int *) ;

void
nm_os_selwakeup(struct nm_selinfo *si)
{
 selwakeuppri(&si->si, PI_NET);
 if (si->kqueue_users > 0) {
  taskqueue_enqueue(si->ntfytq, &si->ntfytask);
 }
}
