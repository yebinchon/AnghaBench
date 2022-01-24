#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_10__ {int /*<<< orphan*/  ifq_maxlen; } ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_capabilities; TYPE_4__ if_snd; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_init; TYPE_3__* if_softc; } ;
struct TYPE_9__ {struct ifnet* fwip_ifp; struct fwip_softc* fwip; } ;
struct TYPE_8__ {TYPE_5__* fc; int /*<<< orphan*/  post_busreset; int /*<<< orphan*/ * post_explore; int /*<<< orphan*/  dev; } ;
struct fwip_softc {int dma_ch; TYPE_3__ fw_softc; TYPE_2__ fd; int /*<<< orphan*/  start_send; int /*<<< orphan*/  mtx; } ;
struct fw_hwaddr {scalar_t__ sspd; void* sender_unicast_FIFO_lo; int /*<<< orphan*/  sender_unicast_FIFO_hi; int /*<<< orphan*/  sender_max_rec; void* sender_unique_ID_lo; void* sender_unique_ID_hi; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_12__ {struct fw_hwaddr fc_hwaddr; } ;
struct TYPE_7__ {int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; } ;
struct TYPE_11__ {scalar_t__ speed; int /*<<< orphan*/  maxrec; TYPE_1__ eui; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,char*) ; 
 int /*<<< orphan*/  IFCAP_POLLING ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 TYPE_6__* FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  IFT_IEEE1394 ; 
 int INET_FIFO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fwip_softc*) ; 
 int /*<<< orphan*/  TX_MAX_QUEUE ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,struct fw_hwaddr*) ; 
 int /*<<< orphan*/  fwip_init ; 
 int /*<<< orphan*/  fwip_ioctl ; 
 int /*<<< orphan*/  fwip_post_busreset ; 
 int /*<<< orphan*/  fwip_start ; 
 int /*<<< orphan*/  fwip_start_send ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ tx_speed ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct fwip_softc *fwip;
	struct ifnet *ifp;
	int unit, s;
	struct fw_hwaddr *hwaddr;

	fwip = ((struct fwip_softc *)FUNC5(dev));
	unit = FUNC6(dev);
	ifp = fwip->fw_softc.fwip_ifp = FUNC10(IFT_IEEE1394);
	if (ifp == NULL)
		return (ENOSPC);

	FUNC12(&fwip->mtx, "fwip", NULL, MTX_DEF);
	/* XXX */
	fwip->dma_ch = -1;

	fwip->fd.fc = FUNC3(dev);
	if (tx_speed < 0)
		tx_speed = fwip->fd.fc->speed;

	fwip->fd.dev = dev;
	fwip->fd.post_explore = NULL;
	fwip->fd.post_busreset = fwip_post_busreset;
	fwip->fw_softc.fwip = fwip;
	FUNC2(&fwip->start_send, 0, fwip_start_send, fwip);

	/*
	 * Encode our hardware the way that arp likes it.
	 */
	hwaddr = &FUNC1(fwip->fw_softc.fwip_ifp)->fc_hwaddr;
	hwaddr->sender_unique_ID_hi = FUNC8(fwip->fd.fc->eui.hi);
	hwaddr->sender_unique_ID_lo = FUNC8(fwip->fd.fc->eui.lo);
	hwaddr->sender_max_rec = fwip->fd.fc->maxrec;
	hwaddr->sspd = fwip->fd.fc->speed;
	hwaddr->sender_unicast_FIFO_hi = FUNC9((uint16_t)(INET_FIFO >> 32));
	hwaddr->sender_unicast_FIFO_lo = FUNC8((uint32_t)INET_FIFO);

	/* fill the rest and attach interface */	
	ifp->if_softc = &fwip->fw_softc;

	FUNC11(ifp, FUNC4(dev), unit);
	ifp->if_init = fwip_init;
	ifp->if_start = fwip_start;
	ifp->if_ioctl = fwip_ioctl;
	ifp->if_flags = (IFF_BROADCAST|IFF_SIMPLEX|IFF_MULTICAST);
	ifp->if_snd.ifq_maxlen = TX_MAX_QUEUE;
#ifdef DEVICE_POLLING
	ifp->if_capabilities |= IFCAP_POLLING;
#endif

	s = FUNC13();
	FUNC7(ifp, hwaddr);
	FUNC14(s);

	FUNC0(ifp, "interface created\n");
	return 0;
}