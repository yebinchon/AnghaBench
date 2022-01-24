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
 int /*<<< orphan*/  R92C_AFE_PLL_CTRL ; 
 int R92C_AFE_PLL_CTRL_FREF_SEL ; 
 int /*<<< orphan*/  R92E_APE_PLL_CTRL_EXT ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct rtwn_softc *sc)
{

	FUNC0(sc, R92C_AFE_PLL_CTRL, R92C_AFE_PLL_CTRL_FREF_SEL, 0);
	FUNC1(sc, R92E_APE_PLL_CTRL_EXT, 0x00000380, 0);
	FUNC0(sc, R92C_AFE_PLL_CTRL, 0x40, 0);
	FUNC1(sc, R92E_APE_PLL_CTRL_EXT, 0x00200000, 0);
}