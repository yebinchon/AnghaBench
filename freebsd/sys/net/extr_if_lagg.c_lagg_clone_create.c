
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct lagg_softc {int sc_flags; void* vlan_detach; void* vlan_attach; int sc_media; int sc_ports; int flowid_shift; int sc_opts; struct ifnet* sc_ifp; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; int if_ratelimit_query; int if_snd_tag_free; int if_snd_tag_query; int if_snd_tag_modify; int if_snd_tag_alloc; int if_get_counter; int if_ioctl; int if_init; int if_qflush; int if_transmit; struct lagg_softc* if_softc; } ;
struct if_clone {int dummy; } ;
typedef int caddr_t ;


 int CK_SLIST_INIT (int *) ;
 int ENOSPC ;
 int EVENTHANDLER_PRI_FIRST ;
 void* EVENTHANDLER_REGISTER (int ,int ,struct lagg_softc*,int ) ;
 int IFCAP_HWSTATS ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFT_ETHER ;
 int LAGG_LIST_LOCK () ;
 int LAGG_LIST_UNLOCK () ;
 int LAGG_OPT_USE_FLOWID ;
 int LAGG_OPT_USE_NUMA ;
 int LAGG_PROTO_DEFAULT ;
 int LAGG_SX_INIT (struct lagg_softc*) ;
 int LAGG_XLOCK (struct lagg_softc*) ;
 int LAGG_XUNLOCK (struct lagg_softc*) ;
 int MBUF_HASHFLAG_L2 ;
 int MBUF_HASHFLAG_L3 ;
 int MBUF_HASHFLAG_L4 ;
 int M_LAGG ;
 int M_WAITOK ;
 int M_ZERO ;
 int SLIST_INSERT_HEAD (int *,struct lagg_softc*,int ) ;
 int V_def_flowid_shift ;
 scalar_t__ V_def_use_flowid ;
 scalar_t__ V_def_use_numa ;
 int V_lagg_list ;
 int ether_ifattach (struct ifnet*,int const*) ;
 int free (struct lagg_softc*,int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int) ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int) ;
 int lagg_get_counter ;
 int lagg_init ;
 int lagg_ioctl ;
 int lagg_media_change ;
 int lagg_media_status ;
 int lagg_proto_attach (struct lagg_softc*,int ) ;
 int lagg_qflush ;
 int lagg_ratelimit_query ;
 int lagg_register_vlan ;
 int lagg_snd_tag_alloc ;
 int lagg_snd_tag_free ;
 int lagg_snd_tag_modify ;
 int lagg_snd_tag_query ;
 int lagg_transmit ;
 int lagg_unregister_vlan ;
 int laggname ;
 struct lagg_softc* malloc (int,int ,int) ;
 int sc_entries ;
 int vlan_config ;
 int vlan_unconfig ;

__attribute__((used)) static int
lagg_clone_create(struct if_clone *ifc, int unit, caddr_t params)
{
 struct lagg_softc *sc;
 struct ifnet *ifp;
 static const u_char eaddr[6];

 sc = malloc(sizeof(*sc), M_LAGG, M_WAITOK|M_ZERO);
 ifp = sc->sc_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  free(sc, M_LAGG);
  return (ENOSPC);
 }
 LAGG_SX_INIT(sc);

 LAGG_XLOCK(sc);
 if (V_def_use_flowid)
  sc->sc_opts |= LAGG_OPT_USE_FLOWID;
 if (V_def_use_numa)
  sc->sc_opts |= LAGG_OPT_USE_NUMA;
 sc->flowid_shift = V_def_flowid_shift;


 sc->sc_flags = MBUF_HASHFLAG_L2|MBUF_HASHFLAG_L3|MBUF_HASHFLAG_L4;

 lagg_proto_attach(sc, LAGG_PROTO_DEFAULT);

 CK_SLIST_INIT(&sc->sc_ports);


 ifmedia_init(&sc->sc_media, 0, lagg_media_change,
     lagg_media_status);
 ifmedia_add(&sc->sc_media, IFM_ETHER | IFM_AUTO, 0, ((void*)0));
 ifmedia_set(&sc->sc_media, IFM_ETHER | IFM_AUTO);

 if_initname(ifp, laggname, unit);
 ifp->if_softc = sc;
 ifp->if_transmit = lagg_transmit;
 ifp->if_qflush = lagg_qflush;
 ifp->if_init = lagg_init;
 ifp->if_ioctl = lagg_ioctl;
 ifp->if_get_counter = lagg_get_counter;
 ifp->if_flags = IFF_SIMPLEX | IFF_BROADCAST | IFF_MULTICAST;







 ifp->if_capenable = ifp->if_capabilities = IFCAP_HWSTATS;





 ether_ifattach(ifp, eaddr);

 sc->vlan_attach = EVENTHANDLER_REGISTER(vlan_config,
  lagg_register_vlan, sc, EVENTHANDLER_PRI_FIRST);
 sc->vlan_detach = EVENTHANDLER_REGISTER(vlan_unconfig,
  lagg_unregister_vlan, sc, EVENTHANDLER_PRI_FIRST);


 LAGG_LIST_LOCK();
 SLIST_INSERT_HEAD(&V_lagg_list, sc, sc_entries);
 LAGG_LIST_UNLOCK();
 LAGG_XUNLOCK(sc);

 return (0);
}
