
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;
struct ifnet {int dummy; } ;


 int nd6_output_ifp (struct ifnet*,struct ifnet*,struct mbuf*,struct sockaddr_in6*,int *) ;

int
nd6_flush_holdchain(struct ifnet *ifp, struct mbuf *chain,
    struct sockaddr_in6 *dst)
{
 struct mbuf *m, *m_head;
 int error = 0;

 m_head = chain;

 while (m_head) {
  m = m_head;
  m_head = m_head->m_nextpkt;
  error = nd6_output_ifp(ifp, ifp, m, dst, ((void*)0));
 }





 return (error);
}
