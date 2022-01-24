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
struct msk_if_softc {int /*<<< orphan*/  msk_if_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_ADDR_MARV ; 
 int /*<<< orphan*/  PHY_MARV_INT_STAT ; 
 int PHY_M_IS_FIFO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct msk_if_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct msk_if_softc *sc_if)
{
	uint16_t status;

	FUNC1(sc_if, PHY_ADDR_MARV, PHY_MARV_INT_STAT);
	status = FUNC1(sc_if, PHY_ADDR_MARV, PHY_MARV_INT_STAT);
	/* Handle FIFO Underrun/Overflow? */
	if ((status & PHY_M_IS_FIFO_ERROR))
		FUNC0(sc_if->msk_if_dev,
		    "PHY FIFO underrun/overflow.\n");
}