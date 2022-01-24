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
 int /*<<< orphan*/  MII_INPHY_SCR ; 
 int FUNC0 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 
 int SCR_FLOWCTL ; 
 int /*<<< orphan*/  FUNC2 (struct mii_softc*) ; 

__attribute__((used)) static void
FUNC3(struct mii_softc *sc)
{

	FUNC2(sc);

	/* Ensure Bay flow control is disabled. */
	FUNC1(sc, MII_INPHY_SCR,
	    FUNC0(sc, MII_INPHY_SCR) & ~SCR_FLOWCTL);
}