
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tq; int work; } ;
struct lio {TYPE_1__ rx_status_tq; } ;
struct ifnet {int dummy; } ;


 struct lio* if_getsoftc (struct ifnet*) ;
 scalar_t__ taskqueue_cancel_timeout (int *,int *,int *) ;
 int taskqueue_drain_timeout (int *,int *) ;
 int taskqueue_free (int *) ;

__attribute__((used)) static void
lio_cleanup_rx_oom_poll_fn(struct ifnet *ifp)
{
 struct lio *lio = if_getsoftc(ifp);

 if (lio->rx_status_tq.tq != ((void*)0)) {
  while (taskqueue_cancel_timeout(lio->rx_status_tq.tq,
      &lio->rx_status_tq.work, ((void*)0)))
   taskqueue_drain_timeout(lio->rx_status_tq.tq,
      &lio->rx_status_tq.work);

  taskqueue_free(lio->rx_status_tq.tq);

  lio->rx_status_tq.tq = ((void*)0);
 }
}
