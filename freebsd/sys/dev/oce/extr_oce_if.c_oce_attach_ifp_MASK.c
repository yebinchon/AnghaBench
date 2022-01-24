#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ ifq_drv_maxlen; } ;
struct TYPE_11__ {int if_flags; int if_hwassist; int if_hw_tsomaxsegsize; int /*<<< orphan*/  if_hw_tsomaxsegcount; scalar_t__ if_hw_tsomax; int /*<<< orphan*/  if_baudrate; int /*<<< orphan*/  if_capabilities; int /*<<< orphan*/  if_capenable; TYPE_7__ if_snd; int /*<<< orphan*/  if_qflush; int /*<<< orphan*/  if_transmit; TYPE_2__* if_softc; int /*<<< orphan*/  if_mtu; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; } ;
struct TYPE_9__ {int /*<<< orphan*/  mac_addr; } ;
struct TYPE_10__ {TYPE_1__ macaddr; TYPE_4__* ifp; int /*<<< orphan*/  dev; int /*<<< orphan*/  media; } ;
typedef  TYPE_2__* POCE_SOFTC ;

/* Variables and functions */
 int CSUM_IP ; 
 int CSUM_TCP ; 
 int CSUM_TSO ; 
 int CSUM_UDP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETHERMTU ; 
 scalar_t__ ETHER_HDR_LEN ; 
 scalar_t__ ETHER_VLAN_ENCAP_LEN ; 
 int /*<<< orphan*/  IFCAP_HWCSUM ; 
 int /*<<< orphan*/  IFCAP_LRO ; 
 int /*<<< orphan*/  IFCAP_TSO ; 
 int /*<<< orphan*/  IFCAP_VLAN_HWFILTER ; 
 int /*<<< orphan*/  IFCAP_VLAN_HWTSO ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int /*<<< orphan*/  IFM_IMASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  OCE_IF_CAPABILITIES ; 
 int OCE_IF_HWASSIST ; 
 scalar_t__ OCE_MAX_TX_DESC ; 
 int /*<<< orphan*/  OCE_MAX_TX_ELEMENTS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  oce_init ; 
 int /*<<< orphan*/  oce_ioctl ; 
 int /*<<< orphan*/  oce_media_change ; 
 int /*<<< orphan*/  oce_media_status ; 
 int /*<<< orphan*/  oce_multiq_flush ; 
 int /*<<< orphan*/  oce_multiq_start ; 
 int /*<<< orphan*/  oce_start ; 

__attribute__((used)) static int 
FUNC11(POCE_SOFTC sc)
{

	sc->ifp = FUNC6(IFT_ETHER);
	if (!sc->ifp)
		return ENOMEM;

	FUNC9(&sc->media, IFM_IMASK, oce_media_change, oce_media_status);
	FUNC8(&sc->media, IFM_ETHER | IFM_AUTO, 0, NULL);
	FUNC10(&sc->media, IFM_ETHER | IFM_AUTO);

	sc->ifp->if_flags = IFF_BROADCAST | IFF_MULTICAST;
	sc->ifp->if_ioctl = oce_ioctl;
	sc->ifp->if_start = oce_start;
	sc->ifp->if_init = oce_init;
	sc->ifp->if_mtu = ETHERMTU;
	sc->ifp->if_softc = sc;
#if __FreeBSD_version >= 800000
	sc->ifp->if_transmit = oce_multiq_start;
	sc->ifp->if_qflush = oce_multiq_flush;
#endif

	FUNC7(sc->ifp,
		    FUNC3(sc->dev), FUNC4(sc->dev));

	sc->ifp->if_snd.ifq_drv_maxlen = OCE_MAX_TX_DESC - 1;
	FUNC0(&sc->ifp->if_snd, sc->ifp->if_snd.ifq_drv_maxlen);
	FUNC1(&sc->ifp->if_snd);

	sc->ifp->if_hwassist = OCE_IF_HWASSIST;
	sc->ifp->if_hwassist |= CSUM_TSO;
	sc->ifp->if_hwassist |= (CSUM_IP | CSUM_TCP | CSUM_UDP);

	sc->ifp->if_capabilities = OCE_IF_CAPABILITIES;
	sc->ifp->if_capabilities |= IFCAP_HWCSUM;
	sc->ifp->if_capabilities |= IFCAP_VLAN_HWFILTER;

#if defined(INET6) || defined(INET)
	sc->ifp->if_capabilities |= IFCAP_TSO;
	sc->ifp->if_capabilities |= IFCAP_LRO;
	sc->ifp->if_capabilities |= IFCAP_VLAN_HWTSO;
#endif
	
	sc->ifp->if_capenable = sc->ifp->if_capabilities;
	sc->ifp->if_baudrate = FUNC2(10);

#if __FreeBSD_version >= 1000000
	sc->ifp->if_hw_tsomax = 65536 - (ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN);
	sc->ifp->if_hw_tsomaxsegcount = OCE_MAX_TX_ELEMENTS;
	sc->ifp->if_hw_tsomaxsegsize = 4096;
#endif

	FUNC5(sc->ifp, sc->macaddr.mac_addr);
	
	return 0;
}