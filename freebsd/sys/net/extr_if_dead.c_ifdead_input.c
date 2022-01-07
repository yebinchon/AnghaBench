
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;


 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
ifdead_input(struct ifnet *ifp, struct mbuf *m)
{

 m_freem(m);
}
