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
typedef  int uint64_t ;
struct schizo_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_stats_dma_ce; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int FUNC0 (struct schizo_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct schizo_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STX_CTRL_CE_AFAR ; 
 int STX_CTRL_CE_AFSR_ERRPNDG ; 
 int /*<<< orphan*/  STX_CTRL_UE_AFSR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(void *arg)
{
	struct schizo_softc *sc = arg;
	uint64_t afar, afsr;
	int i;

	FUNC3(sc->sc_mtx);

	afar = FUNC0(sc, STX_CTRL_CE_AFAR);
	for (i = 0; i < 1000; i++)
		if (((afsr = FUNC0(sc, STX_CTRL_UE_AFSR)) &
		    STX_CTRL_CE_AFSR_ERRPNDG) == 0)
			break;
	sc->sc_stats_dma_ce++;
	FUNC2(sc->sc_dev,
	    "correctable DMA error AFAR %#llx AFSR %#llx\n",
	    (unsigned long long)afar, (unsigned long long)afsr);

	/* Clear the error bits that we caught. */
	FUNC1(sc, STX_CTRL_UE_AFSR, afsr);

	FUNC4(sc->sc_mtx);

	return (FILTER_HANDLED);
}