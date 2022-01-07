
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct mq {struct mbuf* head; } ;
struct TYPE_9__ {int len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct TYPE_10__ {int bandwidth; int delay; } ;
struct dn_schk {TYPE_3__ link; TYPE_1__* fp; } ;
struct TYPE_12__ {int * head; } ;
struct TYPE_11__ {TYPE_5__ mq; } ;
struct dn_sch_inst {scalar_t__ credit; int sched_time; int idle_time; TYPE_4__ dline; int kflags; struct dn_schk* sched; } ;
struct TYPE_14__ {int curr_time; int evheap; } ;
struct TYPE_13__ {int output_time; } ;
struct TYPE_8__ {struct mbuf* (* dequeue ) (struct dn_sch_inst*) ;} ;


 int DN_ACTIVE ;
 int KASSERT (int,char*) ;
 int div64 (scalar_t__,int) ;
 TYPE_7__ dn_cfg ;
 TYPE_6__* dn_tag_get (struct mbuf*) ;
 int extra_bits (struct mbuf*,struct dn_schk*) ;
 int heap_insert (int *,int,struct dn_sch_inst*) ;
 int hz ;
 int mq_append (TYPE_5__*,struct mbuf*) ;
 struct mbuf* stub1 (struct dn_sch_inst*) ;
 int transmit_event (struct mq*,TYPE_4__*,int) ;

__attribute__((used)) static struct mbuf *
serve_sched(struct mq *q, struct dn_sch_inst *si, uint64_t now)
{
 struct mq def_q;
 struct dn_schk *s = si->sched;
 struct mbuf *m = ((void*)0);
 int delay_line_idle = (si->dline.mq.head == ((void*)0));
 int done, bw;

 if (q == ((void*)0)) {
  q = &def_q;
  q->head = ((void*)0);
 }

 bw = s->link.bandwidth;
 si->kflags &= ~DN_ACTIVE;

 if (bw > 0)
  si->credit += (now - si->sched_time) * bw;
 else
  si->credit = 0;
 si->sched_time = now;
 done = 0;
 while (si->credit >= 0 && (m = s->fp->dequeue(si)) != ((void*)0)) {
  uint64_t len_scaled;

  done++;
  len_scaled = (bw == 0) ? 0 : hz *
   (m->m_pkthdr.len * 8 + extra_bits(m, s));
  si->credit -= len_scaled;

  dn_tag_get(m)->output_time = dn_cfg.curr_time + s->link.delay ;
  mq_append(&si->dline.mq, m);
 }






 if (si->credit >= 0) {
  si->idle_time = now;
 } else {
  uint64_t t;
  KASSERT (bw > 0, ("bw=0 and credit<0 ?"));
  t = div64(bw - 1 - si->credit, bw);
  if (m)
   dn_tag_get(m)->output_time += t;
  si->kflags |= DN_ACTIVE;
  heap_insert(&dn_cfg.evheap, now + t, si);
 }
 if (delay_line_idle && done)
  transmit_event(q, &si->dline, now);
 return q->head;
}
