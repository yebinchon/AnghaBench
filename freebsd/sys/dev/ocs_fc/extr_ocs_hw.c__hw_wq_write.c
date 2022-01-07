
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int wqec; } ;
typedef TYPE_2__ sli4_generic_wqe_t ;
struct TYPE_10__ {scalar_t__ wqebuf; } ;
typedef TYPE_3__ ocs_hw_wqe_t ;
typedef scalar_t__ int32_t ;
struct TYPE_11__ {scalar_t__ wqec_count; scalar_t__ wqec_set_count; TYPE_5__* queue; TYPE_1__* hw; int free_count; } ;
typedef TYPE_4__ hw_wq_t ;
struct TYPE_12__ {int id; } ;
struct TYPE_8__ {int q_hist; int sli; } ;


 scalar_t__ _sli_queue_write (int *,TYPE_5__*,scalar_t__) ;
 int ocs_queue_history_wq (int *,void*,int ,scalar_t__) ;

__attribute__((used)) static int32_t
_hw_wq_write(hw_wq_t *wq, ocs_hw_wqe_t *wqe)
{
 int32_t rc;
 int32_t queue_rc;


 if (wq->wqec_count) {
  wq->wqec_count--;
 }
 if (wq->wqec_count == 0) {
  sli4_generic_wqe_t *genwqe = (void*)wqe->wqebuf;
  genwqe->wqec = 1;
  wq->wqec_count = wq->wqec_set_count;
 }


 wq->free_count--;

 queue_rc = _sli_queue_write(&wq->hw->sli, wq->queue, wqe->wqebuf);

 if (queue_rc < 0) {
  rc = -1;
 } else {
  rc = 0;
  ocs_queue_history_wq(&wq->hw->q_hist, (void *) wqe->wqebuf, wq->queue->id, queue_rc);
 }

 return rc;
}
