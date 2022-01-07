
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipcp {unsigned int Queue; } ;
struct ipv6cp {unsigned int Queue; } ;
struct ncp {struct ipcp ipcp; struct ipv6cp ipv6cp; } ;
struct mbuf {int m_offset; int m_len; } ;




 unsigned int IPCP_QUEUES (struct ipcp*) ;
 unsigned int IPV6CP_QUEUES (struct ipcp*) ;
 int LogERROR ;
 int MBUF_CTOP (struct mbuf*) ;
 int MB_IPOUT ;
 int log_Printf (int ,char*,int) ;
 int m_enqueue (unsigned int,struct mbuf*) ;
 struct mbuf* m_get (int,int ) ;
 int memcpy (int ,char*,int) ;

void
ncp_Enqueue(struct ncp *ncp, int af, unsigned pri, char *ptr, int count)
{

  struct ipv6cp *ipv6cp = &ncp->ipv6cp;

  struct ipcp *ipcp = &ncp->ipcp;
  struct mbuf *bp;
  switch (af) {
  case 129:
    if (pri >= IPCP_QUEUES(ipcp)) {
      log_Printf(LogERROR, "Can't store in ip queue %u\n", pri);
      break;
    }

    bp = m_get(count + 6, MB_IPOUT);
    bp->m_offset += 4;
    bp->m_len -= 6;
    memcpy(MBUF_CTOP(bp), ptr, count);
    m_enqueue(ipcp->Queue + pri, bp);
    break;


  case 128:
    if (pri >= IPV6CP_QUEUES(ipcp)) {
      log_Printf(LogERROR, "Can't store in ipv6 queue %u\n", pri);
      break;
    }

    bp = m_get(count + 6, MB_IPOUT);
    bp->m_offset += 4;
    bp->m_len -= 6;
    memcpy(MBUF_CTOP(bp), ptr, count);
    m_enqueue(ipv6cp->Queue + pri, bp);
    break;


  default:
      log_Printf(LogERROR, "Can't enqueue protocol family %d\n", af);
  }
}
