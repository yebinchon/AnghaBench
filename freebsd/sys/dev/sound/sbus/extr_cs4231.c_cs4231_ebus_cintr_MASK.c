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
typedef  int u_long ;
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int u_int32_t ;
struct cs4231_channel {int togo; int nextaddr; int /*<<< orphan*/  channel; int /*<<< orphan*/  buffer; } ;
struct cs4231_softc {struct cs4231_channel sc_rch; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cs4231_softc*) ; 
 int /*<<< orphan*/  CS_TEST_AND_INIT ; 
 int EBDCSR_ERR ; 
 int EBDCSR_INT ; 
 int EBDCSR_TC ; 
 int FUNC2 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cs4231_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EBDMA_DADDR ; 
 int /*<<< orphan*/  EBDMA_DCSR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cs4231_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	struct cs4231_softc *sc;
	struct cs4231_channel *ch;
	u_int32_t csr;
	u_int8_t status;

	sc = arg;
	FUNC0(sc);

	csr = FUNC2(sc, EBDMA_DCSR);
	if ((csr & EBDCSR_INT) == 0) {
		FUNC1(sc);
		return;
	}
	if ((csr & EBDCSR_ERR)) {
		status = FUNC5(sc, CS_TEST_AND_INIT);
		FUNC6(sc->sc_dev,
		    "dma error interrupt : stat = 0x%x\n", status);
	}
	FUNC3(sc, EBDMA_DCSR, csr | EBDCSR_TC);

	ch = NULL;
	if (csr & EBDCSR_TC) {
		u_long nextaddr, saddr;
		u_int32_t togo;

		ch = &sc->sc_rch;
		togo = ch->togo;
		saddr = FUNC8(ch->buffer);
		nextaddr = ch->nextaddr + togo;
		if (nextaddr >= saddr + FUNC7(ch->buffer))
			nextaddr = saddr; 
		/*
		 * EBDMA_DCNT is loaded automatically
		 * EBDMA_C_WRITE(sc, EBDMA_DCNT, togo);
		 */
		FUNC3(sc, EBDMA_DADDR, nextaddr);
		ch->nextaddr = nextaddr;
	}
	FUNC1(sc);
	if (ch)
		FUNC4(ch->channel);
}