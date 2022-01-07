
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {scalar_t__ elements; } ;
struct wf2qp_si {int wsum; int inv_wsum; TYPE_4__ sch_heap; TYPE_4__ ne_heap; void* V; int idle_heap; } ;
struct wf2qp_queue {int inv_w; void* F; void* S; } ;
struct TYPE_5__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct dn_sch_inst {int dummy; } ;
struct TYPE_6__ {struct mbuf* head; } ;
struct dn_queue {TYPE_2__ mq; struct dn_fsk* fs; } ;
struct TYPE_7__ {scalar_t__* par; } ;
struct dn_fsk {TYPE_3__ fs; } ;


 int D (char*) ;
 scalar_t__ DN_KEY_LT (void*,void*) ;
 void* MAX64 (void*,void*) ;
 int ONE_FP ;
 scalar_t__ dn_enqueue (struct dn_queue*,struct mbuf*,int ) ;
 int heap_extract (int *,struct dn_queue*) ;
 int heap_insert (TYPE_4__*,void*,struct dn_queue*) ;

__attribute__((used)) static int
wf2qp_enqueue(struct dn_sch_inst *_si, struct dn_queue *q, struct mbuf *m)
{
    struct dn_fsk *fs = q->fs;
    struct wf2qp_si *si = (struct wf2qp_si *)(_si + 1);
    struct wf2qp_queue *alg_fq;
    uint64_t len = m->m_pkthdr.len;

    if (m != q->mq.head) {
 if (dn_enqueue(q, m, 0))
     return 1;
 if (m != q->mq.head)
     return 0;
    }


    alg_fq = (struct wf2qp_queue *)q;

    if (DN_KEY_LT(alg_fq->F, alg_fq->S)) {

        alg_fq->S = si->V;
        si->wsum += fs->fs.par[0];
 si->inv_wsum = ONE_FP/si->wsum;
    } else {
        heap_extract(&si->idle_heap, q);
        alg_fq->S = MAX64(alg_fq->F, si->V);
    }
    alg_fq->F = alg_fq->S + len * alg_fq->inv_w;


    if (si->ne_heap.elements == 0 && si->sch_heap.elements == 0)
        si->V = MAX64(alg_fq->S, si->V);
    if (DN_KEY_LT(si->V, alg_fq->S)) {

        if (si->sch_heap.elements == 0)
            D("++ ouch! not eligible but empty scheduler!");
        heap_insert(&si->ne_heap, alg_fq->S, q);
    } else {
        heap_insert(&si->sch_heap, alg_fq->F, q);
    }
    return 0;
}
