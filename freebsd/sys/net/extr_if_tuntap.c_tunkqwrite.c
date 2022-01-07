
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap_softc {int dummy; } ;
struct knote {int kn_data; struct tuntap_softc* kn_hook; } ;
struct ifnet {int if_mtu; } ;


 struct ifnet* TUN2IFP (struct tuntap_softc*) ;

__attribute__((used)) static int
tunkqwrite(struct knote *kn, long hint)
{
 struct tuntap_softc *tp = kn->kn_hook;
 struct ifnet *ifp = TUN2IFP(tp);

 kn->kn_data = ifp->if_mtu;

 return (1);
}
