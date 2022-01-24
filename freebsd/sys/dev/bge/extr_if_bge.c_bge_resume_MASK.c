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
struct bge_softc {int /*<<< orphan*/  bge_ifp; } ;
typedef  int /*<<< orphan*/  if_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bge_softc*) ; 
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC2 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct bge_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct bge_softc *sc;
	if_t ifp;

	sc = FUNC4(dev);
	FUNC0(sc);
	ifp = sc->bge_ifp;
	if (FUNC6(ifp) & IFF_UP) {
		FUNC2(sc);
		if (FUNC5(ifp) & IFF_DRV_RUNNING)
			FUNC3(ifp);
	}
	FUNC1(sc);

	return (0);
}