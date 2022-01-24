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
struct schizo_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int FUNC0 (struct schizo_softc*,int /*<<< orphan*/ ) ; 
 int STX_CTRL_CE_AFSR_ERRPNDG ; 
 int /*<<< orphan*/  STX_CTRL_UE_AFAR ; 
 int /*<<< orphan*/  STX_CTRL_UE_AFSR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned long long,unsigned long long) ; 

__attribute__((used)) static int
FUNC3(void *arg)
{
	struct schizo_softc *sc = arg;
	uint64_t afar, afsr;
	int i;

	afar = FUNC0(sc, STX_CTRL_UE_AFAR);
	for (i = 0; i < 1000; i++)
		if (((afsr = FUNC0(sc, STX_CTRL_UE_AFSR)) &
		    STX_CTRL_CE_AFSR_ERRPNDG) == 0)
			break;
	FUNC2("%s: uncorrectable DMA error AFAR %#llx AFSR %#llx",
	    FUNC1(sc->sc_dev), (unsigned long long)afar,
	    (unsigned long long)afsr);
	return (FILTER_HANDLED);
}