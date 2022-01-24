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
 int /*<<< orphan*/  FUNC2 (struct my_softc*,int /*<<< orphan*/ ,int) ; 
 int MY_FD ; 
 int /*<<< orphan*/  FUNC3 (struct my_softc*) ; 
 int MY_PS10 ; 
 int MY_PS1000 ; 
 int MY_RE ; 
 int MY_RXRUN ; 
 int /*<<< orphan*/  FUNC4 (struct my_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MY_TCRRCR ; 
 int MY_TE ; 
 int MY_TIMEOUT ; 
 int MY_TXRUN ; 
 int PHY_BMCR_1000 ; 
 int PHY_BMCR_DUPLEX ; 
 int PHY_BMCR_SPEEDSEL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(struct my_softc * sc, int bmcr)
{
	int             i, restart = 0;

	FUNC3(sc);
	if (FUNC0(sc, MY_TCRRCR) & (MY_TE | MY_RE)) {
		restart = 1;
		FUNC2(sc, MY_TCRRCR, (MY_TE | MY_RE));
		for (i = 0; i < MY_TIMEOUT; i++) {
			FUNC1(10);
			if (!(FUNC0(sc, MY_TCRRCR) &
			    (MY_TXRUN | MY_RXRUN)))
				break;
		}
		if (i == MY_TIMEOUT)
			FUNC5(sc->my_dev,
			    "failed to force tx and rx to idle \n");
	}
	FUNC2(sc, MY_TCRRCR, MY_PS1000);
	FUNC2(sc, MY_TCRRCR, MY_PS10);
	if (bmcr & PHY_BMCR_1000)
		FUNC4(sc, MY_TCRRCR, MY_PS1000);
	else if (!(bmcr & PHY_BMCR_SPEEDSEL))
		FUNC4(sc, MY_TCRRCR, MY_PS10);
	if (bmcr & PHY_BMCR_DUPLEX)
		FUNC4(sc, MY_TCRRCR, MY_FD);
	else
		FUNC2(sc, MY_TCRRCR, MY_FD);
	if (restart)
		FUNC4(sc, MY_TCRRCR, MY_TE | MY_RE);
	return;
}