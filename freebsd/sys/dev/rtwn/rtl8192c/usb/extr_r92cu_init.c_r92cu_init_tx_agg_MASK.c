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
struct rtwn_usb_softc {int /*<<< orphan*/  tx_agg_desc_num; } ;
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92C_TDECTRL ; 
 int /*<<< orphan*/  R92C_TDECTRL_BLK_DESC_NUM ; 
 struct rtwn_usb_softc* FUNC0 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct rtwn_softc *sc)
{
	struct rtwn_usb_softc *uc = FUNC0(sc);
	uint32_t reg;

	reg = FUNC2(sc, R92C_TDECTRL);
	reg = FUNC1(reg, R92C_TDECTRL_BLK_DESC_NUM, uc->tx_agg_desc_num);
	FUNC3(sc, R92C_TDECTRL, reg);
}