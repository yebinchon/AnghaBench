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
struct smc_softc {int /*<<< orphan*/  smc_intr; int /*<<< orphan*/  smc_tq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSR ; 
 int BSR_BANK_MASK ; 
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  MSK ; 
 int FUNC0 (struct smc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct smc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(void *context)
{
	struct smc_softc	*sc;
	uint32_t curbank;

	sc = (struct smc_softc *)context;

	/*
	 * Save current bank and restore later in this function
	 */
	curbank = (FUNC0(sc, BSR) & BSR_BANK_MASK);

	/*
	 * Block interrupts in order to let smc_task_intr to kick in
	 */
	FUNC1(sc, 2);
	FUNC2(sc, MSK, 0);

	/* Restore bank */
	FUNC1(sc, curbank);

	FUNC3(sc->smc_tq, &sc->smc_intr);
	return (FILTER_HANDLED);
}