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
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ R92C_RSV_CTRL ; 
 int R92C_RSV_CTRL_WLOCK_00 ; 
 int /*<<< orphan*/  R92C_SYS_FUNC_EN ; 
 int /*<<< orphan*/  R92C_SYS_FUNC_EN_CPUEN ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct rtwn_softc *sc, int reason)
{
	/* Reset MCU IO wrapper. */
	FUNC0(sc, R92C_RSV_CTRL, R92C_RSV_CTRL_WLOCK_00, 0);
	FUNC0(sc, R92C_RSV_CTRL + 1, 0x08, 0);

	FUNC1(sc, R92C_SYS_FUNC_EN,
	    R92C_SYS_FUNC_EN_CPUEN, 0, 1);

	/* Enable MCU IO wrapper. */
	FUNC0(sc, R92C_RSV_CTRL, R92C_RSV_CTRL_WLOCK_00, 0);
	FUNC0(sc, R92C_RSV_CTRL + 1, 0, 0x08);

	FUNC1(sc, R92C_SYS_FUNC_EN,
	    0, R92C_SYS_FUNC_EN_CPUEN, 1);
}