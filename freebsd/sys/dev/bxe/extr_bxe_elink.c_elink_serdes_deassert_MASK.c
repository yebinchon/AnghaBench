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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 int ELINK_DEFAULT_PHY_DEV_ADDR ; 
 int ELINK_SERDES_RESET_BITS ; 
 scalar_t__ GRCBASE_MISC ; 
 scalar_t__ MISC_REGISTERS_RESET_REG_3_CLEAR ; 
 scalar_t__ MISC_REGISTERS_RESET_REG_3_SET ; 
 scalar_t__ NIG_REG_SERDES0_CTRL_MD_DEVAD ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int) ; 

__attribute__((used)) static void FUNC4(struct bxe_softc *sc, uint8_t port)
{
	uint32_t val;

	FUNC1(sc, "elink_serdes_deassert\n");

	val = ELINK_SERDES_RESET_BITS << (port*16);

	/* Reset and unreset the SerDes/XGXS */
	FUNC2(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_3_CLEAR, val);
	FUNC0(500);
	FUNC2(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_3_SET, val);

	FUNC3(sc, port);

	FUNC2(sc, NIG_REG_SERDES0_CTRL_MD_DEVAD + port*0x10,
	       ELINK_DEFAULT_PHY_DEV_ADDR);
}