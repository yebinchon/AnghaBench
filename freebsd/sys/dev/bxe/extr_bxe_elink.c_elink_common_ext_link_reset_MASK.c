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
typedef  int /*<<< orphan*/  uint8_t ;
struct elink_phy {int dummy; } ;
struct elink_params {int /*<<< orphan*/  port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_1 ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_2 ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_OUTPUT_LOW ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct elink_phy *phy,
					struct elink_params *params)
{
	struct bxe_softc *sc = params->sc;
	uint8_t gpio_port;
	/* HW reset */
	if (FUNC0(sc))
		gpio_port = FUNC2(sc);
	else
		gpio_port = params->port;
	FUNC3(sc, MISC_REGISTERS_GPIO_1,
		       MISC_REGISTERS_GPIO_OUTPUT_LOW,
		       gpio_port);
	FUNC3(sc, MISC_REGISTERS_GPIO_2,
		       MISC_REGISTERS_GPIO_OUTPUT_LOW,
		       gpio_port);
	FUNC1(sc, "reset external PHY\n");
}