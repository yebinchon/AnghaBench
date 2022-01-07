
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int dummy; } ;


 int ifnet_check_outgoing (struct ifnet*) ;

__attribute__((used)) static int
ifoff_ifnet_check_transmit(struct ifnet *ifp, struct label *ifplabel,
    struct mbuf *m, struct label *mlabel)
{

 return (ifnet_check_outgoing(ifp));
}
