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
typedef  int /*<<< orphan*/  uint32_t ;
struct firewire_comm {int /*<<< orphan*/  dev; } ;
struct fwohci_softc {int /*<<< orphan*/  arrq; int /*<<< orphan*/  arrs; int /*<<< orphan*/  atrs; int /*<<< orphan*/  atrq; int /*<<< orphan*/ * sid_buf; struct firewire_comm fc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_FW ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int OHCI_SIDSIZE ; 
 int /*<<< orphan*/  OHCI_SID_CNT ; 
 int OHCI_SID_CNT_MASK ; 
 int OHCI_SID_ERR ; 
 int FUNC1 (struct fwohci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct firewire_comm*) ; 
 int /*<<< orphan*/  FUNC5 (struct firewire_comm*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct fwohci_softc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct fwohci_softc*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void *arg, int pending)
{
	struct fwohci_softc *sc = (struct fwohci_softc *)arg;
	struct firewire_comm *fc = &sc->fc;
	uint32_t *buf;
	int i, plen;


	/*
	 * We really should have locking
	 * here.  Not sure why it's not
	 */
	plen = FUNC1(sc, OHCI_SID_CNT);

	if (plen & OHCI_SID_ERR) {
		FUNC2(fc->dev, "SID Error\n");
		return;
	}
	plen &= OHCI_SID_CNT_MASK;
	if (plen < 4 || plen > OHCI_SIDSIZE) {
		FUNC2(fc->dev, "invalid SID len = %d\n", plen);
		return;
	}
	plen -= 4; /* chop control info */
	buf = (uint32_t *)FUNC8(OHCI_SIDSIZE, M_FW, M_NOWAIT);
	if (buf == NULL) {
		FUNC2(fc->dev, "malloc failed\n");
		return;
	}
	for (i = 0; i < plen / 4; i++)
		buf[i] = FUNC0(sc->sid_buf[i + 1]);

	/* pending all pre-bus_reset packets */
	FUNC7(sc, &sc->atrq);
	FUNC7(sc, &sc->atrs);
	FUNC6(sc, &sc->arrs, -1);
	FUNC6(sc, &sc->arrq, -1);
	FUNC4(fc);
	FUNC5(fc, buf, plen);
	FUNC3(buf, M_FW);
}