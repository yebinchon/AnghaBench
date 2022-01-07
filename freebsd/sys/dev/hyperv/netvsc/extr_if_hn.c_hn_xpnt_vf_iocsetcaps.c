
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_capabilities; int (* if_ioctl ) (struct ifnet*,int ,int ) ;int if_capenable; int if_hwassist; } ;
struct hn_softc {struct ifnet* hn_vf_ifp; struct ifnet* hn_ifp; } ;
typedef int caddr_t ;


 int CSUM_IP6_TSO ;
 int CSUM_IP_TSO ;
 int HN_CSUM_IP6_HWASSIST (struct hn_softc*) ;
 int HN_CSUM_IP_HWASSIST (struct hn_softc*) ;
 int HN_LOCK_ASSERT (struct hn_softc*) ;
 int IFCAP_TSO4 ;
 int IFCAP_TSO6 ;
 int IFCAP_TXCSUM ;
 int IFCAP_TXCSUM_IPV6 ;
 int SIOCSIFCAP ;
 int stub1 (struct ifnet*,int ,int ) ;

__attribute__((used)) static int
hn_xpnt_vf_iocsetcaps(struct hn_softc *sc, struct ifreq *ifr)
{
 struct ifnet *ifp, *vf_ifp;
 uint64_t tmp;
 int error;

 HN_LOCK_ASSERT(sc);
 ifp = sc->hn_ifp;
 vf_ifp = sc->hn_vf_ifp;





 ifr->ifr_reqcap &= ifp->if_capabilities;

 error = vf_ifp->if_ioctl(vf_ifp, SIOCSIFCAP, (caddr_t)ifr);
 ifp->if_capenable = vf_ifp->if_capenable & ifp->if_capabilities;

 tmp = vf_ifp->if_hwassist & HN_CSUM_IP_HWASSIST(sc);
 if (ifp->if_capenable & IFCAP_TXCSUM)
  ifp->if_hwassist |= tmp;
 else
  ifp->if_hwassist &= ~tmp;

 tmp = vf_ifp->if_hwassist & HN_CSUM_IP6_HWASSIST(sc);
 if (ifp->if_capenable & IFCAP_TXCSUM_IPV6)
  ifp->if_hwassist |= tmp;
 else
  ifp->if_hwassist &= ~tmp;

 tmp = vf_ifp->if_hwassist & CSUM_IP_TSO;
 if (ifp->if_capenable & IFCAP_TSO4)
  ifp->if_hwassist |= tmp;
 else
  ifp->if_hwassist &= ~tmp;

 tmp = vf_ifp->if_hwassist & CSUM_IP6_TSO;
 if (ifp->if_capenable & IFCAP_TSO6)
  ifp->if_hwassist |= tmp;
 else
  ifp->if_hwassist &= ~tmp;

 return (error);
}
