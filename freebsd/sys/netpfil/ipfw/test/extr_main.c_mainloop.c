
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int flow_id; } ;
struct dn_queue {int dummy; } ;
struct cfg_s {int loops; int (* enq ) (int ,struct dn_queue*,struct mbuf*) ;int pending; int drop; int si; struct mbuf* (* deq ) (int ) ;int dequeue; scalar_t__ can_dequeue; int _enqueue; struct mbuf* tosend; } ;


 int D (char*,int,...) ;
 int DX (int,char*,int,...) ;
 struct dn_queue* FI2Q (struct cfg_s*,int ) ;
 int ND (char*) ;
 int controller (struct cfg_s*) ;
 int drop (struct cfg_s*,struct mbuf*) ;
 int gnet_stats_deq (struct cfg_s*,struct mbuf*) ;
 int gnet_stats_enq (struct cfg_s*,struct mbuf*) ;
 int stub1 (int ,struct dn_queue*,struct mbuf*) ;
 struct mbuf* stub2 (int ) ;

__attribute__((used)) static int
mainloop(struct cfg_s *c)
{
 int i;
 struct mbuf *m;

 for (i=0; i < c->loops; i++) {

  controller(c);
  DX(3, "loop %d enq %d send %p rx %d",
   i, c->_enqueue, c->tosend, c->can_dequeue);
  if ( (m = c->tosend) ) {
   int ret;
   struct dn_queue *q = FI2Q(c, m->flow_id);
   c->_enqueue++;
   ret = c->enq(c->si, q, m);
   if (ret) {
    drop(c, m);
    D("loop %d enqueue fail", i );



    goto do_dequeue;
   } else {
    ND("enqueue ok");
    c->pending++;
    gnet_stats_enq(c, m);
   }
  } else if (c->can_dequeue) {
do_dequeue:
   c->dequeue++;
   m = c->deq(c->si);
   if (m) {
    c->pending--;
    drop(c, m);
    c->drop--;
    gnet_stats_deq(c, m);
   } else {
    D("--- ouch, cannot operate on iteration %d, pending %d", i, c->pending);
    break;
   }
  }
 }
 DX(1, "mainloop ends %d", i);
 return 0;
}
