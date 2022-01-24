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
struct ow_softc {int /*<<< orphan*/ * owner; int /*<<< orphan*/  mtx; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int OWN_DONTWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct ow_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ow_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ow_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ow_softc* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ow_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t ndev, device_t pdev, int how)
{
	struct ow_softc *sc;

	sc = FUNC4(ndev);
	FUNC0(sc);
	FUNC1(sc);
	if (sc->owner != NULL) {
		if (sc->owner == pdev)
			FUNC6("%s: %s recursively acquiring the bus.\n",
			    FUNC3(ndev),
			    FUNC3(pdev));
		if (how == OWN_DONTWAIT) {
			FUNC2(sc);
			return EWOULDBLOCK;
		}
		while (sc->owner != NULL)
			FUNC5(sc, &sc->mtx, 0, "owbuswait", 0);
	}
	sc->owner = pdev;
	FUNC2(sc);

	return 0;
}