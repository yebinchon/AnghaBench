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
typedef  int uint16_t ;
struct elink_reg_set {int member_1; int member_2; int val; int /*<<< orphan*/  reg; int /*<<< orphan*/  const devad; int /*<<< orphan*/  const member_0; } ;
struct elink_phy {int dummy; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct elink_reg_set*) ; 
#define  MDIO_AN_DEVAD 135 
#define  MDIO_PMA_DEVAD 134 
#define  MDIO_PMA_REG_8481_LED1_MASK 133 
#define  MDIO_PMA_REG_8481_LED2_MASK 132 
#define  MDIO_PMA_REG_8481_LED3_BLINK 131 
#define  MDIO_PMA_REG_8481_LED3_MASK 130 
 int /*<<< orphan*/  MDIO_PMA_REG_8481_LINK_SIGNAL ; 
#define  MDIO_PMA_REG_84823_BLINK_RATE_VAL_15P9HZ 129 
 int MDIO_PMA_REG_84823_CTL_LED_CTL_1 ; 
#define  MDIO_PMA_REG_84823_CTL_SLOW_CLK_CNT_HIGH 128 
 int /*<<< orphan*/  MDIO_PMA_REG_84823_LED3_STRETCH_EN ; 
 int MDIO_PMA_REG_84833_CTL_LED_CTL_1 ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/  const,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct elink_phy*) ; 

__attribute__((used)) static void FUNC5(struct bxe_softc *sc,
				struct elink_phy *phy)
{
	uint16_t val, offset, i;
	static struct elink_reg_set reg_set[] = {
		{MDIO_PMA_DEVAD, MDIO_PMA_REG_8481_LED1_MASK, 0x0080},
		{MDIO_PMA_DEVAD, MDIO_PMA_REG_8481_LED2_MASK, 0x0018},
		{MDIO_PMA_DEVAD, MDIO_PMA_REG_8481_LED3_MASK, 0x0006},
		{MDIO_PMA_DEVAD, MDIO_PMA_REG_8481_LED3_BLINK, 0x0000},
		{MDIO_PMA_DEVAD, MDIO_PMA_REG_84823_CTL_SLOW_CLK_CNT_HIGH,
			MDIO_PMA_REG_84823_BLINK_RATE_VAL_15P9HZ},
		{MDIO_AN_DEVAD, 0xFFFB, 0xFFFD}
	};
	/* PHYC_CTL_LED_CTL */
	FUNC1(sc, phy,
			MDIO_PMA_DEVAD,
			MDIO_PMA_REG_8481_LINK_SIGNAL, &val);
	val &= 0xFE00;
	val |= 0x0092;

	FUNC3(sc, phy,
			 MDIO_PMA_DEVAD,
			 MDIO_PMA_REG_8481_LINK_SIGNAL, val);

	for (i = 0; i < FUNC0(reg_set); i++)
		FUNC3(sc, phy, reg_set[i].devad, reg_set[i].reg,
				 reg_set[i].val);

	if (FUNC4(phy))
		offset = MDIO_PMA_REG_84833_CTL_LED_CTL_1;
	else
		offset = MDIO_PMA_REG_84823_CTL_LED_CTL_1;

	/* stretch_en for LED3*/
	FUNC2(sc, phy,
				 MDIO_PMA_DEVAD, offset,
				 MDIO_PMA_REG_84823_LED3_STRETCH_EN);
}