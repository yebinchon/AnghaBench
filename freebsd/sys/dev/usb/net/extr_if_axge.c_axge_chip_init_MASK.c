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
struct axge_softc {int /*<<< orphan*/  sc_ue; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXGE_ACCESS_MAC ; 
 int /*<<< orphan*/  AXGE_CLK_SELECT ; 
 int AXGE_CLK_SELECT_ACS ; 
 int AXGE_CLK_SELECT_BCS ; 
 int /*<<< orphan*/  AXGE_EPPRCR ; 
 int /*<<< orphan*/  EPPRCR_IPRL ; 
 int /*<<< orphan*/  FUNC0 (struct axge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct axge_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(struct axge_softc *sc)
{
	/* Power up ethernet PHY. */
	FUNC1(sc, AXGE_ACCESS_MAC, 2, AXGE_EPPRCR, 0);
	FUNC1(sc, AXGE_ACCESS_MAC, 2, AXGE_EPPRCR, EPPRCR_IPRL);
	FUNC2(&sc->sc_ue, hz / 4);
	FUNC0(sc, AXGE_ACCESS_MAC, AXGE_CLK_SELECT,
	    AXGE_CLK_SELECT_ACS | AXGE_CLK_SELECT_BCS);
	FUNC2(&sc->sc_ue, hz / 10);
}