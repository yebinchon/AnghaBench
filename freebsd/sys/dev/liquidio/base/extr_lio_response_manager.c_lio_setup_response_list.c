
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lio_tq {int work; int * tq; struct octeon_device* ctxptr; } ;
struct octeon_device {int octeon_id; int cmd_resp_state; struct lio_tq dma_comp_tq; int cmd_resp_wqlock; TYPE_1__* response_list; } ;
struct TYPE_2__ {int pending_req_count; int lock; int head; } ;


 int ENOMEM ;
 int LIO_DRV_ONLINE ;
 int LIO_MAX_RESPONSE_LISTS ;
 int MTX_DEF ;
 int M_WAITOK ;
 int PI_NET ;
 int STAILQ_INIT (int *) ;
 int TIMEOUT_TASK_INIT (int *,int *,int ,int ,void*) ;
 int atomic_store_rel_int (int *,int ) ;
 int lio_dev_err (struct octeon_device*,char*) ;
 int lio_ms_to_ticks (int) ;
 int lio_poll_req_completion ;
 int mtx_init (int *,char*,int *,int ) ;
 int * taskqueue_create (char*,int ,int ,int **) ;
 int taskqueue_enqueue_timeout (int *,int *,int ) ;
 int taskqueue_start_threads (int **,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;

int
lio_setup_response_list(struct octeon_device *oct)
{
 struct lio_tq *ctq;
 int i, ret = 0;

 for (i = 0; i < LIO_MAX_RESPONSE_LISTS; i++) {
  STAILQ_INIT(&oct->response_list[i].head);
  mtx_init(&oct->response_list[i].lock, "response_list_lock",
    ((void*)0), MTX_DEF);
  atomic_store_rel_int(&oct->response_list[i].pending_req_count,
         0);
 }
 mtx_init(&oct->cmd_resp_wqlock, "cmd_resp_wqlock", ((void*)0), MTX_DEF);

 ctq = &oct->dma_comp_tq;
 ctq->tq = taskqueue_create("lio_dma_comp", M_WAITOK,
       taskqueue_thread_enqueue, &ctq->tq);
 if (ctq->tq == ((void*)0)) {
  lio_dev_err(oct, "failed to create wq thread\n");
  return (-ENOMEM);
 }

 TIMEOUT_TASK_INIT(ctq->tq, &ctq->work, 0, lio_poll_req_completion,
     (void *)ctq);
 ctq->ctxptr = oct;

 oct->cmd_resp_state = LIO_DRV_ONLINE;
 taskqueue_start_threads(&ctq->tq, 1, PI_NET, "lio%d_dma_comp",
    oct->octeon_id);
 taskqueue_enqueue_timeout(ctq->tq, &ctq->work, lio_ms_to_ticks(50));

 return (ret);
}
