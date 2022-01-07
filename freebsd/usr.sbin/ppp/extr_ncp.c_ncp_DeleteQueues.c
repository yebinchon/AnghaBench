
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp {int link; } ;
struct ipcp {struct mqueue* Queue; } ;
struct ipv6cp {struct mqueue* Queue; } ;
struct ncp {struct mp mp; struct ipcp ipcp; struct ipv6cp ipv6cp; } ;
struct mqueue {scalar_t__ top; } ;


 int IPCP_QUEUES (struct ipcp*) ;
 int IPV6CP_QUEUES (struct ipv6cp*) ;
 int link_DeleteQueue (int *) ;
 int m_dequeue (struct mqueue*) ;
 int m_freem (int ) ;

void
ncp_DeleteQueues(struct ncp *ncp)
{

  struct ipv6cp *ipv6cp = &ncp->ipv6cp;

  struct ipcp *ipcp = &ncp->ipcp;
  struct mp *mp = &ncp->mp;
  struct mqueue *q;

  for (q = ipcp->Queue; q < ipcp->Queue + IPCP_QUEUES(ipcp); q++)
    while (q->top)
      m_freem(m_dequeue(q));


  for (q = ipv6cp->Queue; q < ipv6cp->Queue + IPV6CP_QUEUES(ipv6cp); q++)
    while (q->top)
      m_freem(m_dequeue(q));


  link_DeleteQueue(&mp->link);
}
