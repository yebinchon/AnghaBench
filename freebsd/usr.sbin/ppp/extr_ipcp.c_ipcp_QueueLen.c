
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqueue {scalar_t__ len; } ;
struct ipcp {struct mqueue* Queue; } ;


 int IPCP_QUEUES (struct ipcp*) ;

size_t
ipcp_QueueLen(struct ipcp *ipcp)
{
  struct mqueue *q;
  size_t result;

  result = 0;
  for (q = ipcp->Queue; q < ipcp->Queue + IPCP_QUEUES(ipcp); q++)
    result += q->len;

  return result;
}
