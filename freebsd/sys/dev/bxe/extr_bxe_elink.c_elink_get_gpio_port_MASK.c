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
typedef  scalar_t__ uint32_t ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  NIG_REG_PORT_SWAP ; 
 int /*<<< orphan*/  NIG_REG_STRAP_OVERRIDE ; 
 scalar_t__ FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bxe_softc*) ; 

__attribute__((used)) static uint8_t FUNC3(struct elink_params *params)
{
	uint8_t gpio_port;
	uint32_t swap_val, swap_override;
	struct bxe_softc *sc = params->sc;
	if (FUNC0(sc))
		gpio_port = FUNC2(sc);
	else
		gpio_port = params->port;
	swap_val = FUNC1(sc, NIG_REG_PORT_SWAP);
	swap_override = FUNC1(sc, NIG_REG_STRAP_OVERRIDE);
	return gpio_port ^ (swap_val && swap_override);
}