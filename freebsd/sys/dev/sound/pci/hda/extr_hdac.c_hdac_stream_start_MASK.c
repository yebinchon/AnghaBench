#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
struct hdac_softc {TYPE_2__* streams; int /*<<< orphan*/  mem; } ;
struct hdac_bdle {void* ioc; void* len; void* addrh; void* addrl; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ bus_addr_t ;
struct TYPE_3__ {int dma_paddr; int /*<<< orphan*/  dma_map; int /*<<< orphan*/  dma_tag; scalar_t__ dma_vaddr; } ;
struct TYPE_4__ {int stripe; int format; int blksz; int running; TYPE_1__ bdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 scalar_t__ HDAC_INTCTL ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ HDAC_SDBDPL ; 
 scalar_t__ HDAC_SDBDPU ; 
 scalar_t__ HDAC_SDCBL ; 
 scalar_t__ HDAC_SDCTL0 ; 
 scalar_t__ HDAC_SDCTL2 ; 
 int HDAC_SDCTL2_DIR ; 
 int HDAC_SDCTL2_STRIPE_MASK ; 
 int HDAC_SDCTL2_STRIPE_SHIFT ; 
 int HDAC_SDCTL2_STRM_MASK ; 
 int HDAC_SDCTL2_STRM_SHIFT ; 
 int HDAC_SDCTL_DEIE ; 
 int HDAC_SDCTL_FEIE ; 
 int HDAC_SDCTL_IOCE ; 
 int HDAC_SDCTL_RUN ; 
 scalar_t__ HDAC_SDFMT ; 
 scalar_t__ HDAC_SDLVI ; 
 scalar_t__ HDAC_SDSTS ; 
 int HDAC_SDSTS_BCIS ; 
 int HDAC_SDSTS_DESE ; 
 int HDAC_SDSTS_FIFOE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hdac_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct hdac_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct hdac_softc*) ; 
 void* FUNC10 (int) ; 

__attribute__((used)) static int
FUNC11(device_t dev, device_t child,
    int dir, int stream, bus_addr_t buf, int blksz, int blkcnt)
{
	struct hdac_softc *sc = FUNC7(dev);
	struct hdac_bdle *bdle;
	uint64_t addr;
	int i, ss, off;
	uint32_t ctl;

	ss = FUNC8(sc, dir, stream);
	FUNC5(ss >= 0,
	    ("Start for not allocated stream (%d/%d)\n", dir, stream));

	addr = (uint64_t)buf;
	bdle = (struct hdac_bdle *)sc->streams[ss].bdl.dma_vaddr;
	for (i = 0; i < blkcnt; i++, bdle++) {
		bdle->addrl = FUNC10((uint32_t)addr);
		bdle->addrh = FUNC10((uint32_t)(addr >> 32));
		bdle->len = FUNC10(blksz);
		bdle->ioc = FUNC10(1);
		addr += blksz;
	}

	FUNC6(sc->streams[ss].bdl.dma_tag,
	    sc->streams[ss].bdl.dma_map, BUS_DMASYNC_PREWRITE);

	off = ss << 5;
	FUNC4(&sc->mem, off + HDAC_SDCBL, blksz * blkcnt);
	FUNC3(&sc->mem, off + HDAC_SDLVI, blkcnt - 1);
	addr = sc->streams[ss].bdl.dma_paddr;
	FUNC4(&sc->mem, off + HDAC_SDBDPL, (uint32_t)addr);
	FUNC4(&sc->mem, off + HDAC_SDBDPU, (uint32_t)(addr >> 32));

	ctl = FUNC0(&sc->mem, off + HDAC_SDCTL2);
	if (dir)
		ctl |= HDAC_SDCTL2_DIR;
	else
		ctl &= ~HDAC_SDCTL2_DIR;
	ctl &= ~HDAC_SDCTL2_STRM_MASK;
	ctl |= stream << HDAC_SDCTL2_STRM_SHIFT;
	ctl &= ~HDAC_SDCTL2_STRIPE_MASK;
	ctl |= sc->streams[ss].stripe << HDAC_SDCTL2_STRIPE_SHIFT;
	FUNC2(&sc->mem, off + HDAC_SDCTL2, ctl);

	FUNC3(&sc->mem, off + HDAC_SDFMT, sc->streams[ss].format);

	ctl = FUNC1(&sc->mem, HDAC_INTCTL);
	ctl |= 1 << ss;
	FUNC4(&sc->mem, HDAC_INTCTL, ctl);

	FUNC2(&sc->mem, off + HDAC_SDSTS,
	    HDAC_SDSTS_DESE | HDAC_SDSTS_FIFOE | HDAC_SDSTS_BCIS);
	ctl = FUNC0(&sc->mem, off + HDAC_SDCTL0);
	ctl |= HDAC_SDCTL_IOCE | HDAC_SDCTL_FEIE | HDAC_SDCTL_DEIE |
	    HDAC_SDCTL_RUN;
	FUNC2(&sc->mem, off + HDAC_SDCTL0, ctl);

	sc->streams[ss].blksz = blksz;
	sc->streams[ss].running = 1;
	FUNC9(sc);
	return (0);
}