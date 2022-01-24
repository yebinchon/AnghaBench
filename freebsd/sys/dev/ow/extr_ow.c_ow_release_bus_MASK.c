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
struct ow_softc {int /*<<< orphan*/ * owner; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ow_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ow_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ow_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ow_softc* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (struct ow_softc*) ; 

__attribute__((used)) static void
FUNC7(device_t ndev, device_t pdev)
{
	struct ow_softc *sc;

	sc = FUNC4(ndev);
	FUNC0(sc);
	FUNC1(sc);
	if (sc->owner == NULL)
		FUNC5("%s: %s releasing unowned bus.", FUNC3(ndev),
		    FUNC3(pdev));
	if (sc->owner != pdev)
		FUNC5("%s: %s don't own the bus. %s does. game over.",
		    FUNC3(ndev), FUNC3(pdev),
		    FUNC3(sc->owner));
	sc->owner = NULL;
	FUNC6(sc);
	FUNC2(sc);
}