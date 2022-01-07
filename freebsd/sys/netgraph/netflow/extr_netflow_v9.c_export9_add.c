
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint16_t ;
struct netflow_v9_record_ipv6_tcp {int dst_as; int src_as; int src_mask; int dst_mask; int tos; int prot; int flags; int d_port; int s_port; void* last; void* first; void* o_octets; void* o_packets; void* i_octets; void* i_packets; void* o_ifx; void* i_ifx; int next_hop; int dst_addr; int src_addr; } ;
struct netflow_v9_record_ipv4_tcp {int dst_as; int src_as; int src_mask; int dst_mask; int tos; int prot; int flags; int d_port; int s_port; void* last; void* first; void* o_octets; void* o_packets; void* i_octets; void* i_packets; void* o_ifx; void* i_ifx; int next_hop; int dst_addr; int src_addr; } ;
struct TYPE_14__ {struct netflow_v9_record_ipv6_tcp v6_tcp; struct netflow_v9_record_ipv4_tcp v4_tcp; } ;
struct netflow_v9_record_general {TYPE_5__ rec; } ;
struct netflow_v9_packet_opt {int flow_type; int mtu; int count; scalar_t__ flow_header; } ;
struct netflow_v9_flowset_header {scalar_t__ length; void* id; } ;
struct mbuf {int dummy; } ;
struct TYPE_11__ {int s_addr; } ;
struct TYPE_10__ {int s_addr; } ;
struct TYPE_13__ {int flow_type; int r_tos; int r_ip_p; int r_dport; int r_sport; TYPE_2__ r_dst; TYPE_1__ r_src; } ;
struct TYPE_12__ {int s_addr; } ;
struct flow_entry_data {int src_mask; int dst_mask; TYPE_4__ r; int tcp_flags; int last; int first; int bytes; int packets; scalar_t__ fle_o_ifx; scalar_t__ fle_i_ifx; TYPE_3__ next_hop; } ;
struct flow_entry {int f; } ;
struct TYPE_16__ {int r_dst6; } ;
struct TYPE_15__ {int r_src6; } ;
struct TYPE_18__ {int r_tos; int r_ip_p; int r_dport; int r_sport; TYPE_7__ dst; TYPE_6__ src; } ;
struct TYPE_17__ {int next_hop6; } ;
struct flow6_entry_data {int src_mask; int dst_mask; TYPE_9__ r; int tcp_flags; int last; int first; int bytes; int packets; scalar_t__ fle_o_ifx; scalar_t__ fle_i_ifx; TYPE_8__ n; } ;
typedef int item_p ;
typedef int fsh ;


 int CTR0 (int ,char*) ;
 int CTR1 (int ,char*,int) ;
 int KTR_NET ;
 int MILLIUPTIME (int ) ;


 scalar_t__ NETFLOW_V9_MAX_RESERVED_FLOWSET ;
 struct mbuf* NGI_M (int ) ;
 scalar_t__ _NETFLOW_V9_MAX_SIZE (int ) ;
 int close_flowset (struct mbuf*,struct netflow_v9_packet_opt*) ;
 void* htonl (int ) ;
 void* htons (scalar_t__) ;
 int m_append (struct mbuf*,size_t,void*) ;
 scalar_t__ m_pktlen (struct mbuf*) ;
 int panic (char*) ;

int
export9_add(item_p item, struct netflow_v9_packet_opt *t, struct flow_entry *fle)
{
 size_t len = 0;
 struct netflow_v9_flowset_header fsh;
 struct netflow_v9_record_general rg;
 struct mbuf *m = NGI_M(item);
 uint16_t flow_type;
 struct flow_entry_data *fed;



 if (t == ((void*)0)) {
  CTR0(KTR_NET, "ng_netflow: V9 export packet without tag!");
  return (0);
 }


 fed = (struct flow_entry_data *)&fle->f;




 flow_type = fed->r.flow_type;

 switch (flow_type) {
 case 129:
 {

  struct netflow_v9_record_ipv4_tcp *rec = &rg.rec.v4_tcp;

  rec->src_addr = fed->r.r_src.s_addr;
  rec->dst_addr = fed->r.r_dst.s_addr;
  rec->next_hop = fed->next_hop.s_addr;
  rec->i_ifx = htons(fed->fle_i_ifx);
  rec->o_ifx = htons(fed->fle_o_ifx);
  rec->i_packets = htonl(fed->packets);
  rec->i_octets = htonl(fed->bytes);
  rec->o_packets = htonl(0);
  rec->o_octets = htonl(0);
  rec->first = htonl(MILLIUPTIME(fed->first));
  rec->last = htonl(MILLIUPTIME(fed->last));
  rec->s_port = fed->r.r_sport;
  rec->d_port = fed->r.r_dport;
  rec->flags = fed->tcp_flags;
  rec->prot = fed->r.r_ip_p;
  rec->tos = fed->r.r_tos;
  rec->dst_mask = fed->dst_mask;
  rec->src_mask = fed->src_mask;


  rec->src_as = rec->dst_as = 0;

  len = sizeof(struct netflow_v9_record_ipv4_tcp);
  break;
 }
 default:
 {
  CTR1(KTR_NET, "export9_add(): Don't know what to do with %d flow type!", flow_type);
  return (0);
 }
 }


 if (flow_type != t->flow_type) {

  if (t->flow_type != 0)
   close_flowset(m, t);

  t->flow_type = flow_type;
  t->flow_header = m_pktlen(m);


  fsh.id = htons(NETFLOW_V9_MAX_RESERVED_FLOWSET + flow_type);
  fsh.length = 0;


  if (m_append(m, sizeof(fsh), (void *)&fsh) != 1)
   panic("ng_netflow: m_append() failed");

 }

 if (m_append(m, len, (void *)&rg.rec) != 1)
  panic("ng_netflow: m_append() failed");

 t->count++;

 if (m_pktlen(m) + sizeof(struct netflow_v9_record_general) + sizeof(struct netflow_v9_flowset_header) >= _NETFLOW_V9_MAX_SIZE(t->mtu))
  return (1);
 return (0);
}
