
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {scalar_t__ ifr_mtu; int ifr_name; int ifr_reqcap; } ;
struct ifnet {scalar_t__ if_hw_tsomax; scalar_t__ if_hw_tsomaxsegcount; scalar_t__ if_hw_tsomaxsegsize; scalar_t__ if_mtu; int (* if_ioctl ) (struct ifnet*,int ,int ) ;int if_xname; int if_capenable; int if_capabilities; } ;
struct hn_softc {scalar_t__ hn_saved_tsomax; scalar_t__ hn_saved_tsosegcnt; scalar_t__ hn_saved_tsosegsz; int hn_saved_caps; scalar_t__ hn_vf_rdytick; struct ifnet* hn_vf_ifp; struct ifnet* hn_ifp; } ;
typedef int ifr ;
typedef int caddr_t ;


 scalar_t__ ETHERMTU ;
 int HN_LOCK_ASSERT (struct hn_softc*) ;
 int SIOCSIFMTU ;
 int hn_mtu_change_fixup (struct hn_softc*) ;
 int hn_xpnt_vf_iocsetcaps (struct hn_softc*,struct ifreq*) ;
 int if_printf (struct ifnet*,char*,scalar_t__,...) ;
 int memset (struct ifreq*,int ,int) ;
 int strlcpy (int ,int ,int) ;
 int stub1 (struct ifnet*,int ,int ) ;

__attribute__((used)) static void
hn_xpnt_vf_setready(struct hn_softc *sc)
{
 struct ifnet *ifp, *vf_ifp;
 struct ifreq ifr;

 HN_LOCK_ASSERT(sc);
 ifp = sc->hn_ifp;
 vf_ifp = sc->hn_vf_ifp;




 sc->hn_vf_rdytick = 0;




 sc->hn_saved_caps = ifp->if_capabilities;
 sc->hn_saved_tsomax = ifp->if_hw_tsomax;
 sc->hn_saved_tsosegcnt = ifp->if_hw_tsomaxsegcount;
 sc->hn_saved_tsosegsz = ifp->if_hw_tsomaxsegsize;







 ifp->if_capabilities &= vf_ifp->if_capabilities;
 ifp->if_capenable &= ifp->if_capabilities;




 if (ifp->if_hw_tsomax > vf_ifp->if_hw_tsomax)
  ifp->if_hw_tsomax = vf_ifp->if_hw_tsomax;
 if (ifp->if_hw_tsomaxsegcount > vf_ifp->if_hw_tsomaxsegcount)
  ifp->if_hw_tsomaxsegcount = vf_ifp->if_hw_tsomaxsegcount;
 if (ifp->if_hw_tsomaxsegsize > vf_ifp->if_hw_tsomaxsegsize)
  ifp->if_hw_tsomaxsegsize = vf_ifp->if_hw_tsomaxsegsize;




 memset(&ifr, 0, sizeof(ifr));
 strlcpy(ifr.ifr_name, vf_ifp->if_xname, sizeof(ifr.ifr_name));
 ifr.ifr_reqcap = ifp->if_capenable;
 hn_xpnt_vf_iocsetcaps(sc, &ifr);

 if (ifp->if_mtu != ETHERMTU) {
  int error;




  memset(&ifr, 0, sizeof(ifr));
  strlcpy(ifr.ifr_name, vf_ifp->if_xname, sizeof(ifr.ifr_name));
  ifr.ifr_mtu = ifp->if_mtu;
  error = vf_ifp->if_ioctl(vf_ifp, SIOCSIFMTU, (caddr_t)&ifr);
  if (error) {
   if_printf(ifp, "%s SIOCSIFMTU %u failed\n",
       vf_ifp->if_xname, ifp->if_mtu);
   if (ifp->if_mtu > ETHERMTU) {
    if_printf(ifp, "change MTU to %d\n", ETHERMTU);







    ifp->if_mtu = ETHERMTU;
    hn_mtu_change_fixup(sc);
   }
  }
 }
}
