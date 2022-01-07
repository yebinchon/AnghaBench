
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct mq {int dummy; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;
struct dn_pkt_tag {int output_time; } ;
struct TYPE_5__ {int subtype; } ;
struct TYPE_4__ {int count; struct mbuf* head; } ;
struct delay_line {TYPE_2__ oid; TYPE_1__ mq; } ;
struct TYPE_6__ {int evheap; } ;


 int DN_KEY_LEQ (int ,int ) ;
 TYPE_3__ dn_cfg ;
 struct dn_pkt_tag* dn_tag_get (struct mbuf*) ;
 int heap_insert (int *,int ,struct delay_line*) ;
 int mq_append (struct mq*,struct mbuf*) ;

__attribute__((used)) static void
transmit_event(struct mq *q, struct delay_line *dline, uint64_t now)
{
 struct mbuf *m;
 struct dn_pkt_tag *pkt = ((void*)0);

 dline->oid.subtype = 0;
 while ((m = dline->mq.head) != ((void*)0)) {
  pkt = dn_tag_get(m);
  if (!DN_KEY_LEQ(pkt->output_time, now))
   break;
  dline->mq.head = m->m_nextpkt;
  dline->mq.count--;
  mq_append(q, m);
 }
 if (m != ((void*)0)) {
  dline->oid.subtype = 1;
  heap_insert(&dn_cfg.evheap, pkt->output_time, dline);
 }
}
