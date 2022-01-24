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
struct pccard_softc {scalar_t__ sc_enabled_count; int /*<<< orphan*/  dev; } ;
struct pccard_function {int /*<<< orphan*/ * cfe; int /*<<< orphan*/  ccr_mask; int /*<<< orphan*/  pf_ccr_offset; int /*<<< orphan*/  pf_ccr_window; int /*<<< orphan*/  number; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 struct pccard_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pccard_function*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pccard_function*) ; 
 scalar_t__ FUNC8 (struct pccard_function*) ; 
 int /*<<< orphan*/  FUNC9 (struct pccard_function*) ; 
 int /*<<< orphan*/  FUNC10 (struct pccard_function*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(device_t dev, device_t child,
    struct pccard_function *pf)
{
	struct pccard_softc *sc = FUNC1(dev);
	int error;

	/*
	 * In NetBSD, the drivers are responsible for activating each
	 * function of a card and selecting the config to use.  In
	 * FreeBSD, all that's done automatically in the typical lazy
	 * way we do device resource allocation (except we pick the
	 * cfe up front).  This is the biggest depature from the
	 * inherited NetBSD model, apart from the FreeBSD resource code.
	 *
	 * This seems to work well in practice for most cards.
	 * However, there are two cases that are problematic.  If a
	 * driver wishes to pick and chose which config entry to use,
	 * then this method falls down.  These are usually older
	 * cards.  In addition, there are some cards that have
	 * multiple hardware units on the cards, but presents only one
	 * CIS chain.  These cards are combination cards, but only one
	 * of these units can be on at a time.
	 *
	 * To overcome this limitation, while preserving the basic
	 * model, the probe routine can select a cfe and try to
	 * activate it.  If that succeeds, then we'll keep track of
	 * and let that information persist until we attach the card.
	 * Probe routines that do this MUST return 0, and cannot
	 * participate in the bidding process for a device.  This
	 * seems harsh until you realize that if a probe routine knows
	 * enough to override the cfe we pick, then chances are very
	 * very good that it is the only driver that could hope to
	 * cope with the card.  Bidding is for generic drivers, and
	 * while some of them may also match, none of them will do
	 * configuration override.
	 */
	error = FUNC5(child);
	if (error != 0)
		goto out;
	FUNC10(pf, -1);
	if (sc->sc_enabled_count == 0)
		FUNC2(FUNC4(dev), dev);
	if (FUNC8(pf) == 0 &&
	    FUNC11(child) == 0 &&
	    FUNC3(child) == 0) {
		FUNC0((sc->dev, "function %d CCR at %d offset %#x "
		    "mask %#x: %#x %#x %#x %#x, %#x %#x %#x %#x, %#x\n",
		    pf->number, pf->pf_ccr_window, pf->pf_ccr_offset,
		    pf->ccr_mask, FUNC6(pf, 0x00),
		    FUNC6(pf, 0x02), FUNC6(pf, 0x04),
		    FUNC6(pf, 0x06), FUNC6(pf, 0x0A),
		    FUNC6(pf, 0x0C), FUNC6(pf, 0x0E),
		    FUNC6(pf, 0x10), FUNC6(pf, 0x12)));
		return (0);
	}
	error = ENXIO;
out:;
	/*
	 * Probe may fail AND also try to select a cfe, if so, free
	 * it.  This is how we do cfe override.  Or the attach fails.
	 * Either way, we have to clean up.
	 */
	if (pf->cfe != NULL)
		FUNC7(pf);
	pf->cfe = NULL;
	FUNC9(pf);
	return error;
}