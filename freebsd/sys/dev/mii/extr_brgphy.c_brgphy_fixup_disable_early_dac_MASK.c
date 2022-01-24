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
typedef  int uint32_t ;
struct mii_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRGPHY_MII_DSP_ADDR_REG ; 
 int /*<<< orphan*/  BRGPHY_MII_DSP_RW_PORT ; 
 int FUNC0 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct mii_softc *sc)
{
	uint32_t val;

	FUNC1(sc, BRGPHY_MII_DSP_ADDR_REG, 0x0f08);
	val = FUNC0(sc, BRGPHY_MII_DSP_RW_PORT);
	val &= ~(1 << 8);
	FUNC1(sc, BRGPHY_MII_DSP_RW_PORT, val);

}