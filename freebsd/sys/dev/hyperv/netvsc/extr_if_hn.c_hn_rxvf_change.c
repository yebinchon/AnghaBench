
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; int if_xname; } ;
struct hn_softc {int hn_flags; int hn_link_flags; struct ifnet* hn_ifp; } ;


 int HN_FLAG_RXVF ;
 int HN_FLAG_SYNTH_ATTACHED ;
 int HN_LINK_FLAG_LINKUP ;
 int HN_LINK_FLAG_NETCHG ;
 int HN_LOCK (struct hn_softc*) ;
 int HN_NVS_DATAPATH_SYNTH ;
 int HN_NVS_DATAPATH_VF ;
 int HN_UNLOCK (struct hn_softc*) ;
 int IFF_DRV_RUNNING ;
 int LINK_STATE_DOWN ;
 int NDIS_PACKET_TYPE_NONE ;
 scalar_t__ bootverbose ;
 int devctl_notify (char*,int ,char*,int *) ;
 int hn_ismyvf (struct hn_softc*,struct ifnet*) ;
 int hn_nvs_set_datapath (struct hn_softc*,int ) ;
 int hn_resume_mgmt (struct hn_softc*) ;
 int hn_rxfilter_config (struct hn_softc*) ;
 int hn_rxvf_set (struct hn_softc*,struct ifnet*) ;
 int hn_set_rxfilter (struct hn_softc*,int ) ;
 int hn_suspend_mgmt (struct hn_softc*) ;
 int hn_vf_rss_fixup (struct hn_softc*,int) ;
 int hn_vf_rss_restore (struct hn_softc*) ;
 int if_link_state_change (struct ifnet*,int ) ;
 int if_printf (struct ifnet*,char*,char*,int ) ;

__attribute__((used)) static void
hn_rxvf_change(struct hn_softc *sc, struct ifnet *ifp, bool rxvf)
{
 struct ifnet *hn_ifp;

 HN_LOCK(sc);

 if (!(sc->hn_flags & HN_FLAG_SYNTH_ATTACHED))
  goto out;

 if (!hn_ismyvf(sc, ifp))
  goto out;
 hn_ifp = sc->hn_ifp;

 if (rxvf) {
  if (sc->hn_flags & HN_FLAG_RXVF)
   goto out;

  sc->hn_flags |= HN_FLAG_RXVF;
  hn_rxfilter_config(sc);
 } else {
  if (!(sc->hn_flags & HN_FLAG_RXVF))
   goto out;

  sc->hn_flags &= ~HN_FLAG_RXVF;
  if (hn_ifp->if_drv_flags & IFF_DRV_RUNNING)
   hn_rxfilter_config(sc);
  else
   hn_set_rxfilter(sc, NDIS_PACKET_TYPE_NONE);
 }

 hn_nvs_set_datapath(sc,
     rxvf ? HN_NVS_DATAPATH_VF : HN_NVS_DATAPATH_SYNTH);

 hn_rxvf_set(sc, rxvf ? ifp : ((void*)0));

 if (rxvf) {
  hn_vf_rss_fixup(sc, 1);
  hn_suspend_mgmt(sc);
  sc->hn_link_flags &=
      ~(HN_LINK_FLAG_LINKUP | HN_LINK_FLAG_NETCHG);
  if_link_state_change(hn_ifp, LINK_STATE_DOWN);
 } else {
  hn_vf_rss_restore(sc);
  hn_resume_mgmt(sc);
 }

 devctl_notify("HYPERV_NIC_VF", hn_ifp->if_xname,
     rxvf ? "VF_UP" : "VF_DOWN", ((void*)0));

 if (bootverbose) {
  if_printf(hn_ifp, "datapath is switched %s %s\n",
      rxvf ? "to" : "from", ifp->if_xname);
 }
out:
 HN_UNLOCK(sc);
}
