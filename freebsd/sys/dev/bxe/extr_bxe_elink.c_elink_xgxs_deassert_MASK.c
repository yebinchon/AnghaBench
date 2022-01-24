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
struct elink_params {int port; int /*<<< orphan*/ * phy; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 size_t ELINK_INT_PHY ; 
 int /*<<< orphan*/  ELINK_PHY_INIT ; 
 int ELINK_XGXS_RESET_BITS ; 
 scalar_t__ GRCBASE_MISC ; 
 scalar_t__ MISC_REGISTERS_RESET_REG_3_CLEAR ; 
 scalar_t__ MISC_REGISTERS_RESET_REG_3_SET ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct elink_params*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct elink_params *params)
{
	struct bxe_softc *sc = params->sc;
	uint8_t port;
	uint32_t val;
	FUNC1(sc, "elink_xgxs_deassert\n");
	port = params->port;

	val = ELINK_XGXS_RESET_BITS << (port*16);

	/* Reset and unreset the SerDes/XGXS */
	FUNC2(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_3_CLEAR, val);
	FUNC0(500);
	FUNC2(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_3_SET, val);
	FUNC3(&params->phy[ELINK_INT_PHY], params,
				 ELINK_PHY_INIT);
}