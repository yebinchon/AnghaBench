#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  mac_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  ifm_media; TYPE_1__* ifm_cur; } ;
struct bxe_softc {int media; TYPE_2__ link_params; int /*<<< orphan*/ * ifp; int /*<<< orphan*/  tx_ring_size; int /*<<< orphan*/  mtu; int /*<<< orphan*/  dev; TYPE_3__ ifmedia; } ;
typedef  int /*<<< orphan*/ * if_t ;
struct TYPE_6__ {int /*<<< orphan*/  ifm_media; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int /*<<< orphan*/ ) ; 
 int CSUM_IP ; 
 int CSUM_TCP ; 
 int CSUM_TCP_IPV6 ; 
 int CSUM_TSO ; 
 int CSUM_UDP ; 
 int CSUM_UDP_IPV6 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int IFCAP_HWCSUM ; 
 int IFCAP_JUMBO_MTU ; 
 int IFCAP_LRO ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TSO6 ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_HWFILTER ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFCAP_VLAN_MTU ; 
 int IFCAP_WOL_MAGIC ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int IFM_FDX ; 
 int /*<<< orphan*/  IFM_IMASK ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  bxe ; 
 int /*<<< orphan*/  bxe_get_counter ; 
 int /*<<< orphan*/  bxe_ifmedia_status ; 
 int /*<<< orphan*/  bxe_ifmedia_update ; 
 int /*<<< orphan*/  bxe_init ; 
 int /*<<< orphan*/  bxe_ioctl ; 
 int /*<<< orphan*/  bxe_mq_flush ; 
 int /*<<< orphan*/  bxe_tx_mq_start ; 
 int /*<<< orphan*/  bxe_tx_start ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_3__*,int) ; 

__attribute__((used)) static int
FUNC29(struct bxe_softc *sc)
{
    if_t ifp;
    int capabilities;

    /* ifconfig entrypoint for media type/status reporting */
    FUNC27(&sc->ifmedia, IFM_IMASK,
                 bxe_ifmedia_update,
                 bxe_ifmedia_status);

    /* set the default interface values */
    FUNC26(&sc->ifmedia, (IFM_ETHER | IFM_FDX | sc->media), 0, NULL);
    FUNC26(&sc->ifmedia, (IFM_ETHER | IFM_AUTO), 0, NULL);
    FUNC28(&sc->ifmedia, (IFM_ETHER | IFM_AUTO));

    sc->ifmedia.ifm_media = sc->ifmedia.ifm_cur->ifm_media; /* XXX ? */
	FUNC1(sc, "IFMEDIA flags : %x\n", sc->ifmedia.ifm_media);

    /* allocate the ifnet structure */
    if ((ifp = FUNC8(IFT_ETHER)) == NULL) {
        FUNC0(sc, "Interface allocation failed!\n");
        return (ENXIO);
    }

    FUNC22(ifp, sc);
    FUNC9(ifp, FUNC4(sc->dev), FUNC5(sc->dev));
    FUNC13(ifp, (IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST));
    FUNC17(ifp, bxe_ioctl);
    FUNC23(ifp, bxe_tx_start);
    FUNC14(ifp, bxe_get_counter);
#if __FreeBSD_version >= 901504
    if_settransmitfn(ifp, bxe_tx_mq_start);
    if_setqflushfn(ifp, bxe_mq_flush);
#endif
#ifdef FreeBSD8_0
    if_settimer(ifp, 0);
#endif
    FUNC16(ifp, bxe_init);
    FUNC18(ifp, sc->mtu);
    FUNC15(ifp, (CSUM_IP      |
                        CSUM_TCP      |
                        CSUM_UDP      |
                        CSUM_TSO      |
                        CSUM_TCP_IPV6 |
                        CSUM_UDP_IPV6));

    capabilities =
#if __FreeBSD_version < 700000
        (IFCAP_VLAN_MTU       |
         IFCAP_VLAN_HWTAGGING |
         IFCAP_HWCSUM         |
         IFCAP_JUMBO_MTU      |
         IFCAP_LRO);
#else
        (IFCAP_VLAN_MTU       |
         IFCAP_VLAN_HWTAGGING |
         IFCAP_VLAN_HWTSO     |
         IFCAP_VLAN_HWFILTER  |
         IFCAP_VLAN_HWCSUM    |
         IFCAP_HWCSUM         |
         IFCAP_JUMBO_MTU      |
         IFCAP_LRO            |
         IFCAP_TSO4           |
         IFCAP_TSO6           |
         IFCAP_WOL_MAGIC);
#endif
    FUNC11(ifp, capabilities, 0); /* XXX */
    FUNC12(ifp, FUNC7(ifp));
    FUNC10(ifp, FUNC3(10));
/* XXX */
    FUNC20(ifp, sc->tx_ring_size);
    FUNC21(ifp);
/* XXX */

    sc->ifp = ifp;

    /* attach to the Ethernet interface list */
    FUNC6(ifp, sc->link_params.mac_addr);

    /* Attach driver debugnet methods. */
    FUNC2(ifp, bxe);

    return (0);
}