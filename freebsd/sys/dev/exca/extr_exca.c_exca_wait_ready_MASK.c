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
struct exca_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  EXCA_IF_STATUS ; 
 int EXCA_IF_STATUS_READY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct exca_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct exca_softc *sc)
{
	int i;
	FUNC1(sc->dev, "exca_wait_ready: status 0x%02x\n",
	    FUNC3(sc, EXCA_IF_STATUS));
	for (i = 0; i < 10000; i++) {
		if (FUNC3(sc, EXCA_IF_STATUS) & EXCA_IF_STATUS_READY)
			return;
		FUNC0(500);
	}
	FUNC2(sc->dev, "ready never happened, status = %02x\n",
	    FUNC3(sc, EXCA_IF_STATUS));
}