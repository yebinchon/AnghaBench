
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wf2qp_si {int wsum; int inv_wsum; int sch_heap; int ne_heap; int V; int idle_heap; } ;
struct wf2qp_queue {scalar_t__ S; scalar_t__ F; } ;
struct TYPE_6__ {int * head; } ;
struct dn_queue {TYPE_3__ mq; TYPE_2__* fs; scalar_t__ _si; } ;
struct TYPE_4__ {scalar_t__* par; } ;
struct TYPE_5__ {TYPE_1__ fs; } ;


 scalar_t__ DN_KEY_LT (int ,scalar_t__) ;
 int ONE_FP ;
 int heap_extract (int *,struct dn_queue*) ;

__attribute__((used)) static int
wf2qp_free_queue(struct dn_queue *q)
{
 struct wf2qp_queue *alg_fq = (struct wf2qp_queue *)q;
 struct wf2qp_si *si = (struct wf2qp_si *)(q->_si + 1);

 if (alg_fq->S >= alg_fq->F + 1)
  return 0;
 si->wsum -= q->fs->fs.par[0];
 if (si->wsum > 0)
  si->inv_wsum = ONE_FP/si->wsum;




 if (q->mq.head == ((void*)0)) {
  heap_extract(&si->idle_heap, q);
 } else if (DN_KEY_LT(si->V, alg_fq->S)) {
  heap_extract(&si->ne_heap, q);
 } else {
  heap_extract(&si->sch_heap, q);
 }
 return 0;
}
