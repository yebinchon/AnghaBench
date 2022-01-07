
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {int dummy; } ;
struct mbufq {int dummy; } ;
struct mbuf {int dummy; } ;
struct ip {int dummy; } ;
struct dyn_ipv4_state {int dport; int sport; TYPE_1__* data; int dst; int src; } ;
struct TYPE_2__ {int state; scalar_t__ ack_fwd; scalar_t__ ack_rev; int fibnum; } ;


 int ACK_FWD ;
 int ACK_REV ;
 int LOG_DEBUG ;
 int dyn_make_keepalive_ipv4 (struct mbuf*,int ,int ,scalar_t__,scalar_t__,int ,int ) ;
 struct mbuf* dyn_mgethdr (int,int ) ;
 int log (int ,char*) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ mbufq_enqueue (struct mbufq*,struct mbuf*) ;

__attribute__((used)) static void
dyn_enqueue_keepalive_ipv4(struct mbufq *q, const struct dyn_ipv4_state *s)
{
 struct mbuf *m;

 if ((s->data->state & ACK_FWD) == 0 && s->data->ack_fwd > 0) {
  m = dyn_mgethdr(sizeof(struct ip) + sizeof(struct tcphdr),
      s->data->fibnum);
  if (m != ((void*)0)) {
   dyn_make_keepalive_ipv4(m, s->dst, s->src,
       s->data->ack_fwd - 1, s->data->ack_rev,
       s->dport, s->sport);
   if (mbufq_enqueue(q, m)) {
    m_freem(m);
    log(LOG_DEBUG, "ipfw: limit for IPv4 "
        "keepalive queue is reached.\n");
    return;
   }
  }
 }

 if ((s->data->state & ACK_REV) == 0 && s->data->ack_rev > 0) {
  m = dyn_mgethdr(sizeof(struct ip) + sizeof(struct tcphdr),
      s->data->fibnum);
  if (m != ((void*)0)) {
   dyn_make_keepalive_ipv4(m, s->src, s->dst,
       s->data->ack_rev - 1, s->data->ack_fwd,
       s->sport, s->dport);
   if (mbufq_enqueue(q, m)) {
    m_freem(m);
    log(LOG_DEBUG, "ipfw: limit for IPv4 "
        "keepalive queue is reached.\n");
    return;
   }
  }
 }
}
