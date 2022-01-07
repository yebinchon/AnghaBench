
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbufq {int mq_maxlen; } ;



int
tcp_pcap_get_sock_max(struct mbufq *queue)
{
 return queue->mq_maxlen;
}
