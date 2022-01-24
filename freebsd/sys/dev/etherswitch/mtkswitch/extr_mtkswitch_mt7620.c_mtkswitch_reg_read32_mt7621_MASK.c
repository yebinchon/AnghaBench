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
struct mtkswitch_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTKSWITCH_GLOBAL_PHY ; 
 int /*<<< orphan*/  MTKSWITCH_GLOBAL_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC5(struct mtkswitch_softc *sc, int reg)
{
	uint32_t low, hi;

	FUNC4(sc, MTKSWITCH_GLOBAL_PHY,
	    MTKSWITCH_GLOBAL_REG, FUNC0(reg));
	low = FUNC3(sc, MTKSWITCH_GLOBAL_PHY,
	    FUNC2(reg));
	hi = FUNC3(sc, MTKSWITCH_GLOBAL_PHY,
	    FUNC1(reg));;
	return (low | (hi << 16));
}