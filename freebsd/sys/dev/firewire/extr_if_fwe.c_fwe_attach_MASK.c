#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct TYPE_13__ {int /*<<< orphan*/  ifq_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; int if_capabilities; int if_capenable; TYPE_6__ if_snd; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_init; TYPE_5__* if_softc; } ;
struct TYPE_12__ {struct ifnet* ifp; struct fwe_softc* fwe; } ;
struct TYPE_11__ {TYPE_7__* fc; int /*<<< orphan*/ * post_explore; int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  chtag; scalar_t__ sy; int /*<<< orphan*/  tcode; } ;
struct TYPE_9__ {TYPE_1__ stream; } ;
struct TYPE_10__ {TYPE_2__ mode; } ;
struct fwe_softc {int dma_ch; TYPE_5__ eth_softc; TYPE_4__ fd; int /*<<< orphan*/  stream_ch; TYPE_3__ pkt_hdr; int /*<<< orphan*/  mtx; } ;
struct fw_eui64 {int dummy; } ;
struct ether_vlan_header {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_14__ {scalar_t__ speed; struct fw_eui64 eui; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,char*) ; 
 int /*<<< orphan*/  FWTCODE_STREAM ; 
 int FUNC1 (struct fw_eui64*,int) ; 
 int GROUP ; 
 int IFCAP_POLLING ; 
 int IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int LOCAL ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  TX_MAX_QUEUE ; 
 int /*<<< orphan*/  FUNC2 (struct fwe_softc*,int) ; 
 TYPE_7__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*,int*) ; 
 int /*<<< orphan*/  fwe_init ; 
 int /*<<< orphan*/  fwe_ioctl ; 
 int /*<<< orphan*/  fwe_start ; 
 struct ifnet* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int,int,int,int,int,int) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  stream_ch ; 
 scalar_t__ tx_speed ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct fwe_softc *fwe;
	struct ifnet *ifp;
	int unit, s;
	u_char eaddr[6];
	struct fw_eui64 *eui;

	fwe = ((struct fwe_softc *)FUNC5(dev));
	unit = FUNC6(dev);

	FUNC2(fwe, sizeof(struct fwe_softc));
	FUNC11(&fwe->mtx, "fwe", NULL, MTX_DEF);
	/* XXX */
	fwe->stream_ch = stream_ch;
	fwe->dma_ch = -1;

	fwe->fd.fc = FUNC3(dev);
	if (tx_speed < 0)
		tx_speed = fwe->fd.fc->speed;

	fwe->fd.dev = dev;
	fwe->fd.post_explore = NULL;
	fwe->eth_softc.fwe = fwe;

	fwe->pkt_hdr.mode.stream.tcode = FWTCODE_STREAM;
	fwe->pkt_hdr.mode.stream.sy = 0;
	fwe->pkt_hdr.mode.stream.chtag = fwe->stream_ch;

	/* generate fake MAC address: first and last 3bytes from eui64 */
#define LOCAL (0x02)
#define GROUP (0x01)

	eui = &fwe->fd.fc->eui;
	eaddr[0] = (FUNC1(eui, 0) | LOCAL) & ~GROUP;
	eaddr[1] = FUNC1(eui, 1);
	eaddr[2] = FUNC1(eui, 2);
	eaddr[3] = FUNC1(eui, 5);
	eaddr[4] = FUNC1(eui, 6);
	eaddr[5] = FUNC1(eui, 7);
	FUNC12("if_fwe%d: Fake Ethernet address: "
		"%02x:%02x:%02x:%02x:%02x:%02x\n", unit,
		eaddr[0], eaddr[1], eaddr[2], eaddr[3], eaddr[4], eaddr[5]);

	/* fill the rest and attach interface */
	ifp = fwe->eth_softc.ifp = FUNC9(IFT_ETHER);
	if (ifp == NULL) {
		FUNC7(dev, "can not if_alloc()\n");
		return (ENOSPC);
	}
	ifp->if_softc = &fwe->eth_softc;

	FUNC10(ifp, FUNC4(dev), unit);
	ifp->if_init = fwe_init;
	ifp->if_start = fwe_start;
	ifp->if_ioctl = fwe_ioctl;
	ifp->if_flags = (IFF_BROADCAST|IFF_SIMPLEX|IFF_MULTICAST);
	ifp->if_snd.ifq_maxlen = TX_MAX_QUEUE;

	s = FUNC13();
	FUNC8(ifp, eaddr);
	FUNC14(s);

        /* Tell the upper layer(s) we support long frames. */
	ifp->if_hdrlen = sizeof(struct ether_vlan_header);
	ifp->if_capabilities |= IFCAP_VLAN_MTU | IFCAP_POLLING;
	ifp->if_capenable |= IFCAP_VLAN_MTU;

	FUNC0(ifp, "interface created\n");
	return 0;
}