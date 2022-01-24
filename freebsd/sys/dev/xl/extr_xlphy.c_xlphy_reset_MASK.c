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
struct mii_softc {int dummy; } ;

/* Variables and functions */
 int BMCR_AUTOEN ; 
 int BMCR_FDX ; 
 int BMCR_S100 ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_softc*) ; 

__attribute__((used)) static void
FUNC2(struct mii_softc *sc)
{

	FUNC1(sc);

	/*
	 * XXX 3Com PHY doesn't set the BMCR properly after
	 * XXX reset, which breaks autonegotiation.
	 */
	FUNC0(sc, MII_BMCR, BMCR_S100|BMCR_AUTOEN|BMCR_FDX);
}