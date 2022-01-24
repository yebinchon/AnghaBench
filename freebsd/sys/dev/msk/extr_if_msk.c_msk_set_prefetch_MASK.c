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
typedef  int /*<<< orphan*/  uint32_t ;
struct msk_softc {int dummy; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct msk_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msk_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct msk_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PREF_UNIT_ADDR_HI_REG ; 
 int /*<<< orphan*/  PREF_UNIT_ADDR_LOW_REG ; 
 int /*<<< orphan*/  PREF_UNIT_CTRL_REG ; 
 int /*<<< orphan*/  PREF_UNIT_LAST_IDX_REG ; 
 int /*<<< orphan*/  PREF_UNIT_OP_ON ; 
 int /*<<< orphan*/  PREF_UNIT_RST_CLR ; 
 int /*<<< orphan*/  PREF_UNIT_RST_SET ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct msk_softc *sc, int qaddr, bus_addr_t addr,
    uint32_t count)
{

	/* Reset the prefetch unit. */
	FUNC2(sc, FUNC5(qaddr, PREF_UNIT_CTRL_REG),
	    PREF_UNIT_RST_SET);
	FUNC2(sc, FUNC5(qaddr, PREF_UNIT_CTRL_REG),
	    PREF_UNIT_RST_CLR);
	/* Set LE base address. */
	FUNC2(sc, FUNC5(qaddr, PREF_UNIT_ADDR_LOW_REG),
	    FUNC4(addr));
	FUNC2(sc, FUNC5(qaddr, PREF_UNIT_ADDR_HI_REG),
	    FUNC3(addr));
	/* Set the list last index. */
	FUNC1(sc, FUNC5(qaddr, PREF_UNIT_LAST_IDX_REG),
	    count);
	/* Turn on prefetch unit. */
	FUNC2(sc, FUNC5(qaddr, PREF_UNIT_CTRL_REG),
	    PREF_UNIT_OP_ON);
	/* Dummy read to ensure write. */
	FUNC0(sc, FUNC5(qaddr, PREF_UNIT_CTRL_REG));
}