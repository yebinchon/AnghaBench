
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct dn_heap {scalar_t__ elements; } ;
struct wf2qp_si {int inv_wsum; scalar_t__ V; struct dn_heap idle_heap; scalar_t__ wsum; struct dn_heap ne_heap; struct dn_heap sch_heap; } ;
struct wf2qp_queue {int F; int S; int inv_w; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct dn_sch_inst {int dummy; } ;
struct TYPE_9__ {TYPE_3__* head; } ;
struct dn_queue {TYPE_4__ mq; } ;
struct TYPE_10__ {int key; struct dn_queue* object; } ;
struct TYPE_7__ {int len; } ;
struct TYPE_8__ {TYPE_2__ m_pkthdr; } ;


 scalar_t__ DN_KEY_LEQ (int,scalar_t__) ;
 TYPE_5__* HEAP_TOP (struct dn_heap*) ;
 scalar_t__ MAX64 (scalar_t__,int) ;
 struct mbuf* dn_dequeue (struct dn_queue*) ;
 int heap_extract (struct dn_heap*,int *) ;
 int heap_insert (struct dn_heap*,int,struct dn_queue*) ;
 int idle_check (struct wf2qp_si*,int,int) ;

__attribute__((used)) static struct mbuf *
wf2qp_dequeue(struct dn_sch_inst *_si)
{

 struct wf2qp_si *si = (struct wf2qp_si *)(_si + 1);
 struct mbuf *m;
 struct dn_queue *q;
 struct dn_heap *sch = &si->sch_heap;
 struct dn_heap *neh = &si->ne_heap;
 struct wf2qp_queue *alg_fq;

 if (sch->elements == 0 && neh->elements == 0) {



  idle_check(si, 0x7fffffff, 1);
  si->V = 0;
  si->wsum = 0;
  return ((void*)0);
 }
 idle_check(si, 1, 0);







  m = ((void*)0);
  for(;;) {
 if (sch->elements == 0 && neh->elements > 0) {
  si->V = MAX64(si->V, HEAP_TOP(neh)->key);
 }
 while (neh->elements > 0 &&
      DN_KEY_LEQ(HEAP_TOP(neh)->key, si->V)) {
  q = HEAP_TOP(neh)->object;
  alg_fq = (struct wf2qp_queue *)q;
  heap_extract(neh, ((void*)0));
  heap_insert(sch, alg_fq->F, q);
 }
 if (m)
  break;

 q = HEAP_TOP(sch)->object;
 alg_fq = (struct wf2qp_queue *)q;
 m = dn_dequeue(q);
 heap_extract(sch, ((void*)0));
 si->V += (uint64_t)(m->m_pkthdr.len) * si->inv_wsum;
 alg_fq->S = alg_fq->F;
 if (q->mq.head == 0) {
  heap_insert(&si->idle_heap, alg_fq->F, q);
 } else {

  uint64_t len = q->mq.head->m_pkthdr.len;
  alg_fq->F += len * alg_fq->inv_w;
  if (DN_KEY_LEQ(alg_fq->S, si->V)) {
   heap_insert(sch, alg_fq->F, q);
  } else {
   heap_insert(neh, alg_fq->S, q);
  }
 }
    }
 return m;
}
