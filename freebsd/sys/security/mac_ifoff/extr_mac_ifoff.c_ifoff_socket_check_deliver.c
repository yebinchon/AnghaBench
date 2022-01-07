
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct TYPE_2__ {int * rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct label {int dummy; } ;


 int M_ASSERTPKTHDR (struct mbuf*) ;
 int ifnet_check_incoming (int *,int ) ;

__attribute__((used)) static int
ifoff_socket_check_deliver(struct socket *so, struct label *solabel,
    struct mbuf *m, struct label *mlabel)
{

 M_ASSERTPKTHDR(m);
 if (m->m_pkthdr.rcvif != ((void*)0))
  return (ifnet_check_incoming(m->m_pkthdr.rcvif, 0));

 return (0);
}
