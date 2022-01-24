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
struct ip17x_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IP175D_RESET_PHY ; 
 int IP175D_RESET_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC3(struct ip17x_softc *sc)
{

	/* Reset all the switch settings. */
	FUNC2(sc->sc_dev, IP175D_RESET_PHY, IP175D_RESET_REG, 0x175d);
	FUNC0(2000);

	/* Disable the special tagging mode. */
	FUNC1(sc->sc_dev, 21, 22, 0x3, 0x0);

	/* Set 802.1q protocol type. */
	FUNC2(sc->sc_dev, 22, 3, 0x8100);

	return (0);
}