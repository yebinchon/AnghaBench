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
struct sec_softc {int sc_int_error_mask; int sc_blocked; int /*<<< orphan*/  sc_cid; int /*<<< orphan*/  sc_shutdown; int /*<<< orphan*/  sc_dev; } ;
struct sec_desc {scalar_t__ sd_error; TYPE_2__* sd_crp; TYPE_1__* sd_desc; } ;
struct TYPE_4__ {scalar_t__ crp_etype; } ;
struct TYPE_3__ {int shd_done; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 scalar_t__ EIO ; 
 int SEC_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sec_softc*,struct sec_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct sec_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct sec_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct sec_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sec_desc*,int) ; 
 struct sec_desc* FUNC6 (struct sec_softc*) ; 
 int /*<<< orphan*/  SEC_ICR ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  SEC_ISR ; 
 int /*<<< orphan*/  FUNC8 (struct sec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sec_softc*) ; 
 scalar_t__ FUNC10 (struct sec_softc*) ; 
 int FUNC11 (struct sec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sec_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  controller ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  descriptors ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sec_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sec_softc*) ; 
 struct sec_desc* FUNC19 (struct sec_softc*,int) ; 

__attribute__((used)) static void
FUNC20(void *arg)
{
	struct sec_softc *sc = arg;
	struct sec_desc *desc;
	uint64_t isr;
	int i, wakeup = 0;

	FUNC8(sc, controller);

	/* Check for errors */
	isr = FUNC11(sc, SEC_ISR);
	if (isr & sc->sc_int_error_mask) {
		/* Check each channel for error */
		for (i = 0; i < SEC_CHANNELS; i++) {
			if ((isr & FUNC7(i)) == 0)
				continue;

			FUNC16(sc->sc_dev,
			    "I/O error on channel %i!\n", i);

			/* Find and mark problematic descriptor */
			desc = FUNC19(sc, FUNC11(sc,
			    FUNC0(i)));

			if (desc != NULL)
				desc->sd_error = EIO;

			/* Do partial channel reset */
			FUNC17(sc, i, 0);
		}
	}

	/* ACK interrupt */
	FUNC13(sc, SEC_ICR, 0xFFFFFFFFFFFFFFFFULL);

	FUNC12(sc, controller);
	FUNC8(sc, descriptors);

	/* Handle processed descriptors */
	FUNC4(sc, BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	while (FUNC10(sc) > 0) {
		desc = FUNC6(sc);

		if (desc->sd_desc->shd_done != 0xFF && desc->sd_error == 0) {
			FUNC9(sc);
			break;
		}

		FUNC5(desc, BUS_DMASYNC_PREREAD |
		    BUS_DMASYNC_PREWRITE);

		desc->sd_crp->crp_etype = desc->sd_error;
		FUNC14(desc->sd_crp);

		FUNC2(desc);
		FUNC1(sc, desc);
		FUNC3(sc);
	}

	FUNC4(sc, BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

	if (!sc->sc_shutdown) {
		wakeup = sc->sc_blocked;
		sc->sc_blocked = 0;
	}

	FUNC12(sc, descriptors);

	/* Enqueue ready descriptors in hardware */
	FUNC18(sc);

	if (wakeup)
		FUNC15(sc->sc_cid, wakeup);
}