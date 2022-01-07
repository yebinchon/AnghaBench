
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct route {int dummy; } ;
struct mbuf {int dummy; } ;
struct ifvlan {int dummy; } ;
struct ifnet {int (* if_output ) (struct ifnet*,struct mbuf*,struct sockaddr const*,struct route*) ;struct ifvlan* if_softc; } ;


 int ENETDOWN ;
 int NET_EPOCH_ASSERT () ;
 struct ifnet* PARENT (struct ifvlan*) ;
 int * TRUNK (struct ifvlan*) ;
 int m_freem (struct mbuf*) ;
 int stub1 (struct ifnet*,struct mbuf*,struct sockaddr const*,struct route*) ;

__attribute__((used)) static int
vlan_output(struct ifnet *ifp, struct mbuf *m, const struct sockaddr *dst,
    struct route *ro)
{
 struct ifvlan *ifv;
 struct ifnet *p;

 NET_EPOCH_ASSERT();

 ifv = ifp->if_softc;
 if (TRUNK(ifv) == ((void*)0)) {
  m_freem(m);
  return (ENETDOWN);
 }
 p = PARENT(ifv);
 return p->if_output(ifp, m, dst, ro);
}
