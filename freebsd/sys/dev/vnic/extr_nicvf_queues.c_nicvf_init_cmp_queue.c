
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nicvf {double cq_coalesce_usecs; int dev; } ;
struct TYPE_2__ {int base; } ;
struct cmp_queue {int idx; int cmp_taskq; int cmp_task; int mtx; int rx_br; struct nicvf* nic; int thresh; TYPE_1__ dmem; int desc; int mtx_name; } ;


 int CMP_QUEUE_CQE_THRESH ;
 int CMP_QUEUE_DESC_SIZE ;
 int CMP_QUEUE_LEN ;
 double CMP_QUEUE_TIMER_THRESH ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int NICVF_CQ_BASE_ALIGN_BYTES ;
 int PI_NET ;
 int TASK_INIT (int *,int ,int ,struct cmp_queue*) ;
 int buf_ring_alloc (int,int ,int ,int *) ;
 char* device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,int ,int *,int ) ;
 int nicvf_alloc_q_desc_mem (struct nicvf*,TYPE_1__*,int,int ,int ) ;
 int nicvf_cmp_task ;
 scalar_t__ pass1_silicon (int ) ;
 int snprintf (int ,int,char*,char*,int) ;
 int taskqueue_create_fast (char*,int ,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*,char*,int) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
nicvf_init_cmp_queue(struct nicvf *nic, struct cmp_queue *cq, int q_len,
    int qidx)
{
 int err;


 snprintf(cq->mtx_name, sizeof(cq->mtx_name), "%s: CQ(%d) lock",
     device_get_nameunit(nic->dev), qidx);
 mtx_init(&cq->mtx, cq->mtx_name, ((void*)0), MTX_DEF);

 err = nicvf_alloc_q_desc_mem(nic, &cq->dmem, q_len, CMP_QUEUE_DESC_SIZE,
         NICVF_CQ_BASE_ALIGN_BYTES);

 if (err != 0) {
  device_printf(nic->dev,
      "Could not allocate DMA memory for CQ\n");
  return (err);
 }

 cq->desc = cq->dmem.base;
 cq->thresh = pass1_silicon(nic->dev) ? 0 : CMP_QUEUE_CQE_THRESH;
 cq->nic = nic;
 cq->idx = qidx;
 nic->cq_coalesce_usecs = (CMP_QUEUE_TIMER_THRESH * 0.05) - 1;

 cq->rx_br = buf_ring_alloc(CMP_QUEUE_LEN * 8, M_DEVBUF, M_WAITOK,
     &cq->mtx);


 TASK_INIT(&cq->cmp_task, 0, nicvf_cmp_task, cq);
 cq->cmp_taskq = taskqueue_create_fast("nicvf_cmp_taskq", M_WAITOK,
     taskqueue_thread_enqueue, &cq->cmp_taskq);
 taskqueue_start_threads(&cq->cmp_taskq, 1, PI_NET, "%s: cmp_taskq(%d)",
     device_get_nameunit(nic->dev), qidx);

 return (0);
}
