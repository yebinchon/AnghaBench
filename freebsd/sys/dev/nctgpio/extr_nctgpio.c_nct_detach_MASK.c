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
struct nct_softc {int /*<<< orphan*/ * iores; int /*<<< orphan*/  iorid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nct_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct nct_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nct_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct nct_softc *sc;

	sc = FUNC3(dev);
	FUNC4(dev);

	if (sc->iores != NULL)
		FUNC2(dev, SYS_RES_IOPORT, sc->iorid, sc->iores);
	FUNC0(sc);
	FUNC1(sc);

	return (0);
}