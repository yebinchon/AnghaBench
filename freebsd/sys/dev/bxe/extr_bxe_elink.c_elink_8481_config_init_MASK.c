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
struct elink_vars {int dummy; } ;
struct elink_phy {int dummy; } ;
struct elink_params {int /*<<< orphan*/  port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  elink_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_REG_CTRL ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_2 ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_OUTPUT_HIGH ; 
 int /*<<< orphan*/  FUNC0 (struct elink_phy*,struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,struct elink_phy*,struct elink_params*) ; 

__attribute__((used)) static elink_status_t FUNC5(struct elink_phy *phy,
				  struct elink_params *params,
				  struct elink_vars *vars)
{
	struct bxe_softc *sc = params->sc;
	/* Restore normal power mode*/
	FUNC1(sc, MISC_REGISTERS_GPIO_2,
		       MISC_REGISTERS_GPIO_OUTPUT_HIGH, params->port);

	/* HW reset */
	FUNC3(sc, params->port);
	FUNC4(sc, phy, params);

	FUNC2(sc, phy, MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 1<<15);
	return FUNC0(phy, params, vars);
}