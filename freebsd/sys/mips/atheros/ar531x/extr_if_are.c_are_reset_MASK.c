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
struct are_softc {int /*<<< orphan*/  are_dev; } ;

/* Variables and functions */
 int BUSMODE_SWR ; 
 int /*<<< orphan*/  CSR_BUSMODE ; 
 int FUNC0 (struct are_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct are_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(struct are_softc *sc)
{
	int		i;

	FUNC1(sc, CSR_BUSMODE, BUSMODE_SWR);

	/*
	 * The chip doesn't take itself out of reset automatically.
	 * We need to do so after 2us.
	 */
	FUNC2(10);
	FUNC1(sc, CSR_BUSMODE, 0);

	for (i = 0; i < 1000; i++) {
		/*
		 * Wait a bit for the reset to complete before peeking
		 * at the chip again.
		 */
		FUNC2(10);
		if ((FUNC0(sc, CSR_BUSMODE) & BUSMODE_SWR) == 0)
			break;
	}

	if (FUNC0(sc, CSR_BUSMODE) & BUSMODE_SWR)
		FUNC3(sc->are_dev, "reset time out\n");

	FUNC2(1000);
}