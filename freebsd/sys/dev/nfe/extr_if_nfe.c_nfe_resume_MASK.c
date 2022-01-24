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
struct nfe_softc {scalar_t__ nfe_suspended; int /*<<< orphan*/  nfe_ifp; } ;
typedef  int /*<<< orphan*/  if_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfe_softc*) ; 
 struct nfe_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfe_softc*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct nfe_softc *sc;
	if_t ifp;

	sc = FUNC2(dev);

	FUNC0(sc);
	FUNC5(sc);
	ifp = sc->nfe_ifp;
	if (FUNC3(ifp) & IFF_UP)
		FUNC4(sc);
	sc->nfe_suspended = 0;
	FUNC1(sc);

	return (0);
}