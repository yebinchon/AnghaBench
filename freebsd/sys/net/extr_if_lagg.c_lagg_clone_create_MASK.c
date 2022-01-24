#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct lagg_softc {int sc_flags; void* vlan_detach; void* vlan_attach; int /*<<< orphan*/  sc_media; int /*<<< orphan*/  sc_ports; int /*<<< orphan*/  flowid_shift; int /*<<< orphan*/  sc_opts; struct ifnet* sc_ifp; } ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_capabilities; int /*<<< orphan*/  if_capenable; int /*<<< orphan*/  if_ratelimit_query; int /*<<< orphan*/  if_snd_tag_free; int /*<<< orphan*/  if_snd_tag_query; int /*<<< orphan*/  if_snd_tag_modify; int /*<<< orphan*/  if_snd_tag_alloc; int /*<<< orphan*/  if_get_counter; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_qflush; int /*<<< orphan*/  if_transmit; struct lagg_softc* if_softc; } ;
struct if_clone {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  EVENTHANDLER_PRI_FIRST ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lagg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFCAP_HWSTATS ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  LAGG_OPT_USE_FLOWID ; 
 int /*<<< orphan*/  LAGG_OPT_USE_NUMA ; 
 int /*<<< orphan*/  LAGG_PROTO_DEFAULT ; 
 int /*<<< orphan*/  FUNC4 (struct lagg_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct lagg_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct lagg_softc*) ; 
 int MBUF_HASHFLAG_L2 ; 
 int MBUF_HASHFLAG_L3 ; 
 int MBUF_HASHFLAG_L4 ; 
 int /*<<< orphan*/  M_LAGG ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct lagg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_def_flowid_shift ; 
 scalar_t__ V_def_use_flowid ; 
 scalar_t__ V_def_use_numa ; 
 int /*<<< orphan*/  V_lagg_list ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (struct lagg_softc*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  lagg_get_counter ; 
 int /*<<< orphan*/  lagg_init ; 
 int /*<<< orphan*/  lagg_ioctl ; 
 int /*<<< orphan*/  lagg_media_change ; 
 int /*<<< orphan*/  lagg_media_status ; 
 int /*<<< orphan*/  FUNC15 (struct lagg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lagg_qflush ; 
 int /*<<< orphan*/  lagg_ratelimit_query ; 
 int /*<<< orphan*/  lagg_register_vlan ; 
 int /*<<< orphan*/  lagg_snd_tag_alloc ; 
 int /*<<< orphan*/  lagg_snd_tag_free ; 
 int /*<<< orphan*/  lagg_snd_tag_modify ; 
 int /*<<< orphan*/  lagg_snd_tag_query ; 
 int /*<<< orphan*/  lagg_transmit ; 
 int /*<<< orphan*/  lagg_unregister_vlan ; 
 int /*<<< orphan*/  laggname ; 
 struct lagg_softc* FUNC16 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sc_entries ; 
 int /*<<< orphan*/  vlan_config ; 
 int /*<<< orphan*/  vlan_unconfig ; 

__attribute__((used)) static int
FUNC17(struct if_clone *ifc, int unit, caddr_t params)
{
	struct lagg_softc *sc;
	struct ifnet *ifp;
	static const u_char eaddr[6];	/* 00:00:00:00:00:00 */

	sc = FUNC16(sizeof(*sc), M_LAGG, M_WAITOK|M_ZERO);
	ifp = sc->sc_ifp = FUNC10(IFT_ETHER);
	if (ifp == NULL) {
		FUNC9(sc, M_LAGG);
		return (ENOSPC);
	}
	FUNC4(sc);

	FUNC5(sc);
	if (V_def_use_flowid)
		sc->sc_opts |= LAGG_OPT_USE_FLOWID;
	if (V_def_use_numa)
		sc->sc_opts |= LAGG_OPT_USE_NUMA;
	sc->flowid_shift = V_def_flowid_shift;

	/* Hash all layers by default */
	sc->sc_flags = MBUF_HASHFLAG_L2|MBUF_HASHFLAG_L3|MBUF_HASHFLAG_L4;

	FUNC15(sc, LAGG_PROTO_DEFAULT);

	FUNC0(&sc->sc_ports);

	/* Initialise pseudo media types */
	FUNC13(&sc->sc_media, 0, lagg_media_change,
	    lagg_media_status);
	FUNC12(&sc->sc_media, IFM_ETHER | IFM_AUTO, 0, NULL);
	FUNC14(&sc->sc_media, IFM_ETHER | IFM_AUTO);

	FUNC11(ifp, laggname, unit);
	ifp->if_softc = sc;
	ifp->if_transmit = lagg_transmit;
	ifp->if_qflush = lagg_qflush;
	ifp->if_init = lagg_init;
	ifp->if_ioctl = lagg_ioctl;
	ifp->if_get_counter = lagg_get_counter;
	ifp->if_flags = IFF_SIMPLEX | IFF_BROADCAST | IFF_MULTICAST;
#if defined(KERN_TLS) || defined(RATELIMIT)
	ifp->if_snd_tag_alloc = lagg_snd_tag_alloc;
	ifp->if_snd_tag_modify = lagg_snd_tag_modify;
	ifp->if_snd_tag_query = lagg_snd_tag_query;
	ifp->if_snd_tag_free = lagg_snd_tag_free;
	ifp->if_ratelimit_query = lagg_ratelimit_query;
#endif
	ifp->if_capenable = ifp->if_capabilities = IFCAP_HWSTATS;

	/*
	 * Attach as an ordinary ethernet device, children will be attached
	 * as special device IFT_IEEE8023ADLAG.
	 */
	FUNC8(ifp, eaddr);

	sc->vlan_attach = FUNC1(vlan_config,
		lagg_register_vlan, sc, EVENTHANDLER_PRI_FIRST);
	sc->vlan_detach = FUNC1(vlan_unconfig,
		lagg_unregister_vlan, sc, EVENTHANDLER_PRI_FIRST);

	/* Insert into the global list of laggs */
	FUNC2();
	FUNC7(&V_lagg_list, sc, sc_entries);
	FUNC3();
	FUNC6(sc);

	return (0);
}