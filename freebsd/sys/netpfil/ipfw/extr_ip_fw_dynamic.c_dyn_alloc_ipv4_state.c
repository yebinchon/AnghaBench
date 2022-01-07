
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ipfw_flow_id {int dst_ip; int src_ip; int dst_port; int src_port; int proto; } ;
struct dyn_ipv4_state {int dst; int src; int dport; int sport; int proto; int kidx; int type; } ;


 int M_NOWAIT ;
 int M_ZERO ;
 int V_dyn_ipv4_zone ;
 struct dyn_ipv4_state* uma_zalloc (int ,int) ;

__attribute__((used)) static struct dyn_ipv4_state *
dyn_alloc_ipv4_state(const struct ipfw_flow_id *pkt, uint16_t kidx,
    uint8_t type)
{
 struct dyn_ipv4_state *s;

 s = uma_zalloc(V_dyn_ipv4_zone, M_NOWAIT | M_ZERO);
 if (s == ((void*)0))
  return (((void*)0));

 s->type = type;
 s->kidx = kidx;
 s->proto = pkt->proto;
 s->sport = pkt->src_port;
 s->dport = pkt->dst_port;
 s->src = pkt->src_ip;
 s->dst = pkt->dst_ip;
 return (s);
}
