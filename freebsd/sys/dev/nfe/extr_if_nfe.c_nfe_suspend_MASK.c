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
struct nfe_softc {int nfe_suspended; int /*<<< orphan*/  nfe_ifp; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfe_softc*) ; 
 struct nfe_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct nfe_softc *sc;

	sc = FUNC2(dev);

	FUNC0(sc);
	FUNC4(sc->nfe_ifp);
	FUNC3(sc);
	sc->nfe_suspended = 1;
	FUNC1(sc);

	return (0);
}