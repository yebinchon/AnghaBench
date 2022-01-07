
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_outpkts; int t_inpkts; } ;


 int V_tcp_pcap_packets ;
 int mbufq_init (int *,int ) ;

void
tcp_pcap_tcpcb_init(struct tcpcb *tp)
{
 mbufq_init(&(tp->t_inpkts), V_tcp_pcap_packets);
 mbufq_init(&(tp->t_outpkts), V_tcp_pcap_packets);
}
