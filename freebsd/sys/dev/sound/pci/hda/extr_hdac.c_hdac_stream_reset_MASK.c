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
typedef  int uint32_t ;
struct hdac_softc {int /*<<< orphan*/  mem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ HDAC_SDCTL0 ; 
 int HDAC_SDCTL_SRST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 struct hdac_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct hdac_softc*,int,int) ; 

__attribute__((used)) static void
FUNC7(device_t dev, device_t child, int dir, int stream)
{
	struct hdac_softc *sc = FUNC4(dev);
	int timeout = 1000;
	int to = timeout;
	int ss, off;
	uint32_t ctl;

	ss = FUNC6(sc, dir, stream);
	FUNC3(ss >= 0,
	    ("Reset for not allocated stream (%d/%d)\n", dir, stream));

	off = ss << 5;
	ctl = FUNC1(&sc->mem, off + HDAC_SDCTL0);
	ctl |= HDAC_SDCTL_SRST;
	FUNC2(&sc->mem, off + HDAC_SDCTL0, ctl);
	do {
		ctl = FUNC1(&sc->mem, off + HDAC_SDCTL0);
		if (ctl & HDAC_SDCTL_SRST)
			break;
		FUNC0(10);
	} while (--to);
	if (!(ctl & HDAC_SDCTL_SRST))
		FUNC5(dev, "Reset setting timeout\n");
	ctl &= ~HDAC_SDCTL_SRST;
	FUNC2(&sc->mem, off + HDAC_SDCTL0, ctl);
	to = timeout;
	do {
		ctl = FUNC1(&sc->mem, off + HDAC_SDCTL0);
		if (!(ctl & HDAC_SDCTL_SRST))
			break;
		FUNC0(10);
	} while (--to);
	if (ctl & HDAC_SDCTL_SRST)
		FUNC5(dev, "Reset timeout!\n");
}