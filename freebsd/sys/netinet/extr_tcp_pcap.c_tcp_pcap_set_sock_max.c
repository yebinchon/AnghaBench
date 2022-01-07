
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbufq {int mq_maxlen; int mq_len; } ;


 int mbufq_dequeue (struct mbufq*) ;
 int tcp_pcap_m_freem (int ) ;

void
tcp_pcap_set_sock_max(struct mbufq *queue, int newval)
{
 queue->mq_maxlen = newval;
 while (queue->mq_len > queue->mq_maxlen)
  tcp_pcap_m_freem(mbufq_dequeue(queue));
}
