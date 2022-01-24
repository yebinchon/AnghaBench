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
typedef  int uint32_t ;
struct hdac_softc {TYPE_2__* streams; int /*<<< orphan*/  mem; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int /*<<< orphan*/  dma_map; int /*<<< orphan*/  dma_tag; } ;
struct TYPE_4__ {scalar_t__ running; TYPE_1__ bdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  HDAC_INTCTL ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ HDAC_SDCTL0 ; 
 int HDAC_SDCTL_DEIE ; 
 int HDAC_SDCTL_FEIE ; 
 int HDAC_SDCTL_IOCE ; 
 int HDAC_SDCTL_RUN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hdac_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct hdac_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hdac_softc*) ; 

__attribute__((used)) static void
FUNC9(device_t dev, device_t child, int dir, int stream)
{
	struct hdac_softc *sc = FUNC6(dev);
	int ss, off;
	uint32_t ctl;

	ss = FUNC7(sc, dir, stream);
	FUNC4(ss >= 0,
	    ("Stop for not allocated stream (%d/%d)\n", dir, stream));

	FUNC5(sc->streams[ss].bdl.dma_tag,
	    sc->streams[ss].bdl.dma_map, BUS_DMASYNC_POSTWRITE);

	off = ss << 5;
	ctl = FUNC0(&sc->mem, off + HDAC_SDCTL0);
	ctl &= ~(HDAC_SDCTL_IOCE | HDAC_SDCTL_FEIE | HDAC_SDCTL_DEIE |
	    HDAC_SDCTL_RUN);
	FUNC2(&sc->mem, off + HDAC_SDCTL0, ctl);

	ctl = FUNC1(&sc->mem, HDAC_INTCTL);
	ctl &= ~(1 << ss);
	FUNC3(&sc->mem, HDAC_INTCTL, ctl);

	sc->streams[ss].running = 0;
	FUNC8(sc);
}