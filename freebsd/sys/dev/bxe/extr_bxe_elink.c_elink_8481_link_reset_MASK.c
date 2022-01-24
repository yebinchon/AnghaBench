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
struct elink_phy {int dummy; } ;
struct elink_params {int /*<<< orphan*/  sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_AN_DEVAD ; 
 int /*<<< orphan*/  MDIO_AN_REG_CTRL ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_REG_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct elink_phy *phy,
					struct elink_params *params)
{
	FUNC0(params->sc, phy,
			 MDIO_AN_DEVAD, MDIO_AN_REG_CTRL, 0x0000);
	FUNC0(params->sc, phy,
			 MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 1);
}