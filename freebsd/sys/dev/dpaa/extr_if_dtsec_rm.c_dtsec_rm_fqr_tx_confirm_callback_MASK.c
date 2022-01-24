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
typedef  struct dtsec_softc* t_Handle ;
typedef  int /*<<< orphan*/  t_DpaaSGTE ;
typedef  int /*<<< orphan*/  t_DpaaFD ;
struct dtsec_softc {scalar_t__ sc_tx_fqr_full; int /*<<< orphan*/  sc_tx_conf_fqr; int /*<<< orphan*/  sc_dev; } ;
struct dtsec_rm_frame_info {int /*<<< orphan*/  fi_mbuf; } ;
typedef  int /*<<< orphan*/  e_RxStoreResponse ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct dtsec_rm_frame_info* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dtsec_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct dtsec_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct dtsec_softc*,struct dtsec_rm_frame_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct dtsec_softc*) ; 
 int /*<<< orphan*/  e_QM_FQR_COUNTERS_FRAME ; 
 int /*<<< orphan*/  e_RX_STORE_RESPONSE_CONTINUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static e_RxStoreResponse
FUNC10(t_Handle app, t_Handle fqr, t_Handle portal,
    uint32_t fqid_off, t_DpaaFD *frame)
{
	struct dtsec_rm_frame_info *fi;
	struct dtsec_softc *sc;
	unsigned int qlen;
	t_DpaaSGTE *sgt0;

	sc = app;

	if (FUNC1(frame) != 0)
		FUNC5(sc->sc_dev, "TX error: 0x%08X\n",
		    FUNC1(frame));

	/*
	 * We are storing struct dtsec_rm_frame_info in first entry
	 * of scatter-gather table.
	 */
	sgt0 = FUNC0(frame);
	fi = FUNC2(sgt0);

	/* Free transmitted frame */
	FUNC8(fi->fi_mbuf);
	FUNC6(sc, fi);

	qlen = FUNC9(sc->sc_tx_conf_fqr, 0,
	    e_QM_FQR_COUNTERS_FRAME);

	if (qlen == 0) {
		FUNC3(sc);

		if (sc->sc_tx_fqr_full) {
			sc->sc_tx_fqr_full = 0;
			FUNC7(sc);
		}

		FUNC4(sc);
	}

	return (e_RX_STORE_RESPONSE_CONTINUE);
}