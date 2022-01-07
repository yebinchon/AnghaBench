
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hn_softc {int hn_xvf_flags; TYPE_1__* hn_vf_ifp; TYPE_2__* hn_ifp; } ;
struct TYPE_4__ {int if_xname; } ;
struct TYPE_3__ {int if_xname; int if_flags; } ;


 int HN_LOCK_ASSERT (struct hn_softc*) ;
 int HN_NVS_DATAPATH_VF ;
 int HN_XVFFLAG_ENABLED ;
 int IFF_UP ;
 int KASSERT (int,char*) ;
 scalar_t__ bootverbose ;
 int hn_nvs_set_datapath (struct hn_softc*,int ) ;
 int hn_vf_rss_fixup (struct hn_softc*,int) ;
 int hn_xpnt_vf_iocsetflags (struct hn_softc*) ;
 int hn_xpnt_vf_saveifflags (struct hn_softc*) ;
 int hn_xpnt_vf_setenable (struct hn_softc*) ;
 int if_printf (TYPE_2__*,char*,int ,...) ;

__attribute__((used)) static void
hn_xpnt_vf_init(struct hn_softc *sc)
{
 int error;

 HN_LOCK_ASSERT(sc);

 KASSERT((sc->hn_xvf_flags & HN_XVFFLAG_ENABLED) == 0,
     ("%s: transparent VF was enabled", sc->hn_ifp->if_xname));

 if (bootverbose) {
  if_printf(sc->hn_ifp, "try bringing up %s\n",
      sc->hn_vf_ifp->if_xname);
 }




 hn_xpnt_vf_saveifflags(sc);
 sc->hn_vf_ifp->if_flags |= IFF_UP;
 error = hn_xpnt_vf_iocsetflags(sc);
 if (error) {
  if_printf(sc->hn_ifp, "bringing up %s failed: %d\n",
      sc->hn_vf_ifp->if_xname, error);
  return;
 }





 hn_nvs_set_datapath(sc, HN_NVS_DATAPATH_VF);






 hn_vf_rss_fixup(sc, 1);


 hn_xpnt_vf_setenable(sc);
}
