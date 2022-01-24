#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct vtbe_softc {int hdrsize; int is_attached; struct ifnet* ifp; int /*<<< orphan*/  dev; int /*<<< orphan*/  pio_recv; int /*<<< orphan*/  pio_send; int /*<<< orphan*/  beri_mem_offset; int /*<<< orphan*/  mtx; int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
struct virtio_net_hdr {int dummy; } ;
struct TYPE_3__ {int ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; TYPE_1__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_capabilities; int /*<<< orphan*/  if_capenable; struct vtbe_softc* if_softc; int /*<<< orphan*/  if_baudrate; } ;
struct ether_vlan_header {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int DESC_COUNT ; 
 int ENXIO ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_PROMISC ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int VIRTIO_F_NOTIFY_ON_EMPTY ; 
 int VIRTIO_ID_NETWORK ; 
 int /*<<< orphan*/  VIRTIO_MMIO_DEVICE_ID ; 
 int /*<<< orphan*/  VIRTIO_MMIO_HOST_FEATURES ; 
 int /*<<< orphan*/  VIRTIO_MMIO_QUEUE_NUM_MAX ; 
 int VIRTIO_NET_F_MAC ; 
 int /*<<< orphan*/  FUNC3 (struct vtbe_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct vtbe_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int) ; 
 struct ifnet* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (struct vtbe_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vtbe_init ; 
 int /*<<< orphan*/  vtbe_ioctl ; 
 int /*<<< orphan*/  vtbe_spec ; 
 int /*<<< orphan*/  vtbe_txstart ; 

__attribute__((used)) static int
FUNC20(device_t dev)
{
	uint8_t macaddr[ETHER_ADDR_LEN];
	struct vtbe_softc *sc;
	struct ifnet *ifp;
	int reg;

	sc = FUNC7(dev);
	sc->dev = dev;

	sc->hdrsize = sizeof(struct virtio_net_hdr);

	if (FUNC4(dev, vtbe_spec, sc->res)) {
		FUNC9(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC16(sc->res[0]);
	sc->bsh = FUNC15(sc->res[0]);

	FUNC14(&sc->mtx, FUNC6(sc->dev),
	    MTX_NETWORK_LOCK, MTX_DEF);

	if (FUNC17(dev, &sc->beri_mem_offset) != 0)
		return (ENXIO);
	if (FUNC18(dev, "pio-send", &sc->pio_send) != 0)
		return (ENXIO);
	if (FUNC18(dev, "pio-recv", &sc->pio_recv) != 0)
		return (ENXIO);

	/* Setup MMIO */

	/* Specify that we provide network device */
	reg = FUNC11(VIRTIO_ID_NETWORK);
	FUNC3(sc, VIRTIO_MMIO_DEVICE_ID, reg);

	/* The number of desc we support */
	reg = FUNC11(DESC_COUNT);
	FUNC3(sc, VIRTIO_MMIO_QUEUE_NUM_MAX, reg);

	/* Our features */
	reg = FUNC11(VIRTIO_NET_F_MAC |
    			VIRTIO_F_NOTIFY_ON_EMPTY);
	FUNC3(sc, VIRTIO_MMIO_HOST_FEATURES, reg);

	/* Get MAC */
	if (FUNC19(sc, macaddr)) {
		FUNC9(sc->dev, "can't get mac\n");
		return (ENXIO);
	}

	/* Set up the ethernet interface. */
	sc->ifp = ifp = FUNC12(IFT_ETHER);
	ifp->if_baudrate = FUNC2(10);
	ifp->if_softc = sc;
	FUNC13(ifp, FUNC5(dev), FUNC8(dev));
	ifp->if_flags = (IFF_BROADCAST | IFF_SIMPLEX |
			 IFF_MULTICAST | IFF_PROMISC);
	ifp->if_capabilities = IFCAP_VLAN_MTU;
	ifp->if_capenable = ifp->if_capabilities;
	ifp->if_start = vtbe_txstart;
	ifp->if_ioctl = vtbe_ioctl;
	ifp->if_init = vtbe_init;
	FUNC0(&ifp->if_snd, DESC_COUNT - 1);
	ifp->if_snd.ifq_drv_maxlen = DESC_COUNT - 1;
	FUNC1(&ifp->if_snd);
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);

	/* All ready to run, attach the ethernet interface. */
	FUNC10(ifp, macaddr);

	sc->is_attached = true;

	return (0);
}