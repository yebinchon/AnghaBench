
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_flags; int ifr_flagshigh; int ifr_name; } ;
struct ifnet {int if_flags; int (* if_ioctl ) (struct ifnet*,int ,int ) ;int if_xname; } ;
struct hn_softc {struct ifnet* hn_vf_ifp; } ;
typedef int ifr ;
typedef int caddr_t ;


 int HN_LOCK_ASSERT (struct hn_softc*) ;
 int SIOCSIFFLAGS ;
 int memset (struct ifreq*,int ,int) ;
 int strlcpy (int ,int ,int) ;
 int stub1 (struct ifnet*,int ,int ) ;

__attribute__((used)) static int
hn_xpnt_vf_iocsetflags(struct hn_softc *sc)
{
 struct ifnet *vf_ifp;
 struct ifreq ifr;

 HN_LOCK_ASSERT(sc);
 vf_ifp = sc->hn_vf_ifp;

 memset(&ifr, 0, sizeof(ifr));
 strlcpy(ifr.ifr_name, vf_ifp->if_xname, sizeof(ifr.ifr_name));
 ifr.ifr_flags = vf_ifp->if_flags & 0xffff;
 ifr.ifr_flagshigh = vf_ifp->if_flags >> 16;
 return (vf_ifp->if_ioctl(vf_ifp, SIOCSIFFLAGS, (caddr_t)&ifr));
}
