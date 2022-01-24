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
struct my_softc {int /*<<< orphan*/  my_dev; } ;

/* Variables and functions */
 int FUNC0 (struct my_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MY_BCR ; 
 int /*<<< orphan*/  FUNC2 (struct my_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct my_softc*,int /*<<< orphan*/ ,int) ; 
 int MY_SWR ; 
 int MY_TIMEOUT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(struct my_softc * sc)
{
	int    i;

	FUNC2(sc);
	FUNC3(sc, MY_BCR, MY_SWR);
	for (i = 0; i < MY_TIMEOUT; i++) {
		FUNC1(10);
		if (!(FUNC0(sc, MY_BCR) & MY_SWR))
			break;
	}
	if (i == MY_TIMEOUT)
		FUNC4(sc->my_dev, "reset never completed!\n");

	/* Wait a little while for the chip to get its brains in order. */
	FUNC1(1000);
	return;
}