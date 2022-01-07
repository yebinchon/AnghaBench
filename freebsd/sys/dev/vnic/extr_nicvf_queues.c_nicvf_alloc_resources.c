
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_set {int rbdr_cnt; int sq_cnt; int cq_cnt; int qs_err_taskq; int qs_err_task; int cq_len; int * cq; int sq_len; int * sq; int rbdr_len; int * rbdr; } ;
struct nicvf {int dev; struct queue_set* qs; } ;


 int DMA_BUFFER_LEN ;
 int ENOMEM ;
 int M_WAITOK ;
 int PI_NET ;
 int TASK_INIT (int *,int ,int ,struct nicvf*) ;
 int device_get_nameunit (int ) ;
 int nicvf_free_resources (struct nicvf*) ;
 scalar_t__ nicvf_init_cmp_queue (struct nicvf*,int *,int ,int) ;
 scalar_t__ nicvf_init_rbdr (struct nicvf*,int *,int ,int ,int) ;
 scalar_t__ nicvf_init_snd_queue (struct nicvf*,int *,int ,int) ;
 int nicvf_qs_err_task ;
 int taskqueue_create_fast (char*,int ,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
nicvf_alloc_resources(struct nicvf *nic)
{
 struct queue_set *qs = nic->qs;
 int qidx;


 for (qidx = 0; qidx < qs->rbdr_cnt; qidx++) {
  if (nicvf_init_rbdr(nic, &qs->rbdr[qidx], qs->rbdr_len,
        DMA_BUFFER_LEN, qidx))
   goto alloc_fail;
 }


 for (qidx = 0; qidx < qs->sq_cnt; qidx++) {
  if (nicvf_init_snd_queue(nic, &qs->sq[qidx], qs->sq_len, qidx))
   goto alloc_fail;
 }


 for (qidx = 0; qidx < qs->cq_cnt; qidx++) {
  if (nicvf_init_cmp_queue(nic, &qs->cq[qidx], qs->cq_len, qidx))
   goto alloc_fail;
 }


 TASK_INIT(&qs->qs_err_task, 0, nicvf_qs_err_task, nic);
 qs->qs_err_taskq = taskqueue_create_fast("nicvf_qs_err_taskq", M_WAITOK,
     taskqueue_thread_enqueue, &qs->qs_err_taskq);
 taskqueue_start_threads(&qs->qs_err_taskq, 1, PI_NET, "%s: qs_taskq",
     device_get_nameunit(nic->dev));

 return (0);
alloc_fail:
 nicvf_free_resources(nic);
 return (ENOMEM);
}
