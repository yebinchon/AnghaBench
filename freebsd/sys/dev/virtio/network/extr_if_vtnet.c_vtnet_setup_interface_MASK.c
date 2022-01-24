#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vtnet_softc {int vtnet_flags; void* vtnet_vlan_detach; void* vtnet_vlan_attach; int /*<<< orphan*/  vtnet_hwaddr; int /*<<< orphan*/  vtnet_media; TYPE_1__* vtnet_txqs; struct ifnet* vtnet_ifp; int /*<<< orphan*/  vtnet_dev; } ;
struct virtqueue {int dummy; } ;
struct TYPE_5__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_hdrlen; int if_capenable; TYPE_2__ if_snd; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_qflush; int /*<<< orphan*/  if_transmit; int /*<<< orphan*/  if_get_counter; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_init; struct vtnet_softc* if_softc; int /*<<< orphan*/  if_baudrate; } ;
struct ether_vlan_header {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {struct virtqueue* vtntx_vq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  EVENTHANDLER_PRI_FIRST ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vtnet_softc*,int /*<<< orphan*/ ) ; 
 int IFCAP_HWCSUM ; 
 int IFCAP_JUMBO_MTU ; 
 int IFCAP_LINKSTATE ; 
 int IFCAP_LRO ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_RXCSUM_IPV6 ; 
 int IFCAP_TSO ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TSO6 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_TXCSUM_IPV6 ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_HWFILTER ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  IFM_IMASK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  VIRTIO_NET_F_CSUM ; 
 int /*<<< orphan*/  VIRTIO_NET_F_GSO ; 
 int /*<<< orphan*/  VIRTIO_NET_F_GUEST_CSUM ; 
 int /*<<< orphan*/  VIRTIO_NET_F_GUEST_TSO4 ; 
 int /*<<< orphan*/  VIRTIO_NET_F_GUEST_TSO6 ; 
 int /*<<< orphan*/  VIRTIO_NET_F_HOST_ECN ; 
 int /*<<< orphan*/  VIRTIO_NET_F_HOST_TSO4 ; 
 int /*<<< orphan*/  VIRTIO_NET_F_HOST_TSO6 ; 
 int /*<<< orphan*/  VIRTIO_NET_F_STATUS ; 
 int VTNET_FLAG_TSO_ECN ; 
 int VTNET_FLAG_VLAN_FILTER ; 
 int /*<<< orphan*/  VTNET_MEDIATYPE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct virtqueue*) ; 
 int /*<<< orphan*/  vlan_config ; 
 int /*<<< orphan*/  vlan_unconfig ; 
 int /*<<< orphan*/  vtnet ; 
 int /*<<< orphan*/  vtnet_get_counter ; 
 int /*<<< orphan*/  FUNC16 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  vtnet_ifmedia_sts ; 
 int /*<<< orphan*/  vtnet_ifmedia_upd ; 
 int /*<<< orphan*/  vtnet_init ; 
 int /*<<< orphan*/  vtnet_ioctl ; 
 int /*<<< orphan*/  vtnet_qflush ; 
 int /*<<< orphan*/  vtnet_register_vlan ; 
 int /*<<< orphan*/  FUNC17 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  vtnet_start ; 
 int /*<<< orphan*/  vtnet_txq_mq_start ; 
 int /*<<< orphan*/  vtnet_unregister_vlan ; 

__attribute__((used)) static int
FUNC19(struct vtnet_softc *sc)
{
	device_t dev;
	struct ifnet *ifp;

	dev = sc->vtnet_dev;

	ifp = sc->vtnet_ifp = FUNC9(IFT_ETHER);
	if (ifp == NULL) {
		FUNC7(dev, "cannot allocate ifnet structure\n");
		return (ENOSPC);
	}

	FUNC10(ifp, FUNC5(dev), FUNC6(dev));
	ifp->if_baudrate = FUNC4(10);	/* Approx. */
	ifp->if_softc = sc;
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_init = vtnet_init;
	ifp->if_ioctl = vtnet_ioctl;
	ifp->if_get_counter = vtnet_get_counter;
#ifndef VTNET_LEGACY_TX
	ifp->if_transmit = vtnet_txq_mq_start;
	ifp->if_qflush = vtnet_qflush;
#else
	struct virtqueue *vq = sc->vtnet_txqs[0].vtntx_vq;
	ifp->if_start = vtnet_start;
	IFQ_SET_MAXLEN(&ifp->if_snd, virtqueue_size(vq) - 1);
	ifp->if_snd.ifq_drv_maxlen = virtqueue_size(vq) - 1;
	IFQ_SET_READY(&ifp->if_snd);
#endif

	FUNC12(&sc->vtnet_media, IFM_IMASK, vtnet_ifmedia_upd,
	    vtnet_ifmedia_sts);
	FUNC11(&sc->vtnet_media, VTNET_MEDIATYPE, 0, NULL);
	FUNC13(&sc->vtnet_media, VTNET_MEDIATYPE);

	/* Read (or generate) the MAC address for the adapter. */
	FUNC16(sc);

	FUNC8(ifp, sc->vtnet_hwaddr);

	if (FUNC14(dev, VIRTIO_NET_F_STATUS))
		ifp->if_capabilities |= IFCAP_LINKSTATE;

	/* Tell the upper layer(s) we support long frames. */
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);
	ifp->if_capabilities |= IFCAP_JUMBO_MTU | IFCAP_VLAN_MTU;

	if (FUNC14(dev, VIRTIO_NET_F_CSUM)) {
		ifp->if_capabilities |= IFCAP_TXCSUM | IFCAP_TXCSUM_IPV6;

		if (FUNC14(dev, VIRTIO_NET_F_GSO)) {
			ifp->if_capabilities |= IFCAP_TSO4 | IFCAP_TSO6;
			sc->vtnet_flags |= VTNET_FLAG_TSO_ECN;
		} else {
			if (FUNC14(dev, VIRTIO_NET_F_HOST_TSO4))
				ifp->if_capabilities |= IFCAP_TSO4;
			if (FUNC14(dev, VIRTIO_NET_F_HOST_TSO6))
				ifp->if_capabilities |= IFCAP_TSO6;
			if (FUNC14(dev, VIRTIO_NET_F_HOST_ECN))
				sc->vtnet_flags |= VTNET_FLAG_TSO_ECN;
		}

		if (ifp->if_capabilities & IFCAP_TSO)
			ifp->if_capabilities |= IFCAP_VLAN_HWTSO;
	}

	if (FUNC14(dev, VIRTIO_NET_F_GUEST_CSUM)) {
		ifp->if_capabilities |= IFCAP_RXCSUM | IFCAP_RXCSUM_IPV6;

		if (FUNC14(dev, VIRTIO_NET_F_GUEST_TSO4) ||
		    FUNC14(dev, VIRTIO_NET_F_GUEST_TSO6))
			ifp->if_capabilities |= IFCAP_LRO;
	}

	if (ifp->if_capabilities & IFCAP_HWCSUM) {
		/*
		 * VirtIO does not support VLAN tagging, but we can fake
		 * it by inserting and removing the 802.1Q header during
		 * transmit and receive. We are then able to do checksum
		 * offloading of VLAN frames.
		 */
		ifp->if_capabilities |=
		    IFCAP_VLAN_HWTAGGING | IFCAP_VLAN_HWCSUM;
	}

	ifp->if_capenable = ifp->if_capabilities;

	/*
	 * Capabilities after here are not enabled by default.
	 */

	if (sc->vtnet_flags & VTNET_FLAG_VLAN_FILTER) {
		ifp->if_capabilities |= IFCAP_VLAN_HWFILTER;

		sc->vtnet_vlan_attach = FUNC1(vlan_config,
		    vtnet_register_vlan, sc, EVENTHANDLER_PRI_FIRST);
		sc->vtnet_vlan_detach = FUNC1(vlan_unconfig,
		    vtnet_unregister_vlan, sc, EVENTHANDLER_PRI_FIRST);
	}

	FUNC17(sc);
	FUNC18(sc);

	FUNC0(ifp, vtnet);

	return (0);
}