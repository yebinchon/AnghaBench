
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int octeon_id; } ;
struct lio_tq {int work; int * tq; struct lio* ctxptr; } ;
struct lio {struct lio_tq rx_status_tq; struct octeon_device* oct_dev; } ;
struct ifnet {int dummy; } ;


 int M_WAITOK ;
 int PI_NET ;
 int TIMEOUT_TASK_INIT (int *,int *,int ,int ,void*) ;
 struct lio* if_getsoftc (struct ifnet*) ;
 int lio_dev_err (struct octeon_device*,char*) ;
 int lio_ms_to_ticks (int) ;
 int lio_poll_check_rx_oom_status ;
 int * taskqueue_create (char*,int ,int ,int **) ;
 int taskqueue_enqueue_timeout (int *,int *,int ) ;
 int taskqueue_start_threads (int **,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
lio_setup_rx_oom_poll_fn(struct ifnet *ifp)
{
 struct lio *lio = if_getsoftc(ifp);
 struct octeon_device *oct = lio->oct_dev;
 struct lio_tq *rx_status_tq;

 rx_status_tq = &lio->rx_status_tq;

 rx_status_tq->tq = taskqueue_create("lio_rx_oom_status", M_WAITOK,
         taskqueue_thread_enqueue,
         &rx_status_tq->tq);
 if (rx_status_tq->tq == ((void*)0)) {
  lio_dev_err(oct, "unable to create lio rx oom status tq\n");
  return (-1);
 }

 TIMEOUT_TASK_INIT(rx_status_tq->tq, &rx_status_tq->work, 0,
     lio_poll_check_rx_oom_status, (void *)rx_status_tq);

 rx_status_tq->ctxptr = lio;

 taskqueue_start_threads(&rx_status_tq->tq, 1, PI_NET,
    "lio%d_rx_oom_status",
    oct->octeon_id);

 taskqueue_enqueue_timeout(rx_status_tq->tq, &rx_status_tq->work,
      lio_ms_to_ticks(50));

 return (0);
}
