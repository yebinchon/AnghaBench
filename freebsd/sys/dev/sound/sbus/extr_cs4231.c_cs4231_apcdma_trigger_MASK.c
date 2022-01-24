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
typedef  int u_int32_t ;
struct cs4231_softc {int /*<<< orphan*/  sc_dev; } ;
struct cs4231_channel {int locked; scalar_t__ dir; int togo; int nextaddr; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  APC_CNC ; 
 int /*<<< orphan*/  APC_CNVA ; 
 int /*<<< orphan*/  APC_CSR ; 
 int APC_CSR_CD ; 
 int APC_CSR_CDMA_GO ; 
 int APC_CSR_CIE ; 
 int APC_CSR_CMIE ; 
 int APC_CSR_CPAUSE ; 
 int APC_CSR_EI ; 
 int APC_CSR_EIE ; 
 int APC_CSR_GIE ; 
 int APC_CSR_PD ; 
 int APC_CSR_PDMA_GO ; 
 int APC_CSR_PIE ; 
 int APC_CSR_PMIE ; 
 int APC_CSR_PPAUSE ; 
 int /*<<< orphan*/  APC_PNC ; 
 int /*<<< orphan*/  APC_PNVA ; 
 int FUNC0 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cs4231_softc*,int /*<<< orphan*/ ,int) ; 
 int CAPTURE_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (struct cs4231_softc*) ; 
 int CS4231_MAX_APC_DMA_SZ ; 
 int /*<<< orphan*/  FUNC3 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  CS_INTERFACE_CONFIG ; 
 int /*<<< orphan*/  CS_TEST_AND_INIT ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ PCMDIR_PLAY ; 
 int PLAYBACK_ENABLE ; 
 int FUNC5 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cs4231_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct cs4231_softc *sc, struct cs4231_channel *ch)
{
	u_int32_t csr, togo;
	u_int32_t nextaddr;

	FUNC2(sc);
	if (ch->locked) {
		FUNC7(sc->sc_dev, "%s channel already triggered\n",
		    ch->dir == PCMDIR_PLAY ? "playback" : "capture");
		FUNC3(sc);
		return;
	}

	nextaddr = FUNC8(ch->buffer);
	togo = FUNC9(ch->buffer) / 2;
	if (togo > CS4231_MAX_APC_DMA_SZ)
		togo = CS4231_MAX_APC_DMA_SZ;
	ch->togo = togo;
	if (ch->dir == PCMDIR_PLAY) {
		FUNC4(("TRG: PNVA = 0x%x, togo = 0x%x\n", nextaddr, togo));

		FUNC5(sc, CS_TEST_AND_INIT); /* clear pending error */
		csr = FUNC0(sc, APC_CSR);
		FUNC1(sc, APC_PNVA, nextaddr);
		FUNC1(sc, APC_PNC, togo);
			
		if ((csr & APC_CSR_PDMA_GO) == 0 ||
		    (csr & APC_CSR_PPAUSE) != 0) {
			FUNC1(sc, APC_CSR, FUNC0(sc, APC_CSR) &
			    ~(APC_CSR_PIE | APC_CSR_PPAUSE));
			FUNC1(sc, APC_CSR, FUNC0(sc, APC_CSR) |
			    APC_CSR_GIE | APC_CSR_PIE | APC_CSR_EIE |
			    APC_CSR_EI | APC_CSR_PMIE | APC_CSR_PDMA_GO);
			FUNC6(sc, CS_INTERFACE_CONFIG,
			    FUNC5(sc, CS_INTERFACE_CONFIG) |
			    PLAYBACK_ENABLE);
		}
		/* load next address */
		if (FUNC0(sc, APC_CSR) & APC_CSR_PD) {
			nextaddr += togo;
			FUNC1(sc, APC_PNVA, nextaddr);
			FUNC1(sc, APC_PNC, togo);
		}
	} else {
		FUNC4(("TRG: CNVA = 0x%x, togo = 0x%x\n", nextaddr, togo));

		FUNC5(sc, CS_TEST_AND_INIT); /* clear pending error */
		FUNC1(sc, APC_CNVA, nextaddr);
		FUNC1(sc, APC_CNC, togo);
		csr = FUNC0(sc, APC_CSR);
		if ((csr & APC_CSR_CDMA_GO) == 0 ||
		    (csr & APC_CSR_CPAUSE) != 0) {
			csr &= APC_CSR_CPAUSE;
			csr |= APC_CSR_GIE | APC_CSR_CMIE | APC_CSR_CIE |
			    APC_CSR_EI | APC_CSR_CDMA_GO;
			FUNC1(sc, APC_CSR, csr);
			FUNC6(sc, CS_INTERFACE_CONFIG,
			    FUNC5(sc, CS_INTERFACE_CONFIG) |
			    CAPTURE_ENABLE);
		}
		/* load next address */
		if (FUNC0(sc, APC_CSR) & APC_CSR_CD) {
			nextaddr += togo;
			FUNC1(sc, APC_CNVA, nextaddr);
			FUNC1(sc, APC_CNC, togo);
		}
	}
	ch->nextaddr = nextaddr;
	ch->locked = 1;
	FUNC3(sc);
}