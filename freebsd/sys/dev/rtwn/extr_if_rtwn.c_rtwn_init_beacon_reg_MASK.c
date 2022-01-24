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
 int /*<<< orphan*/  R92C_BCNDMATIM ; 
 int /*<<< orphan*/  R92C_BCNTCFG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int R92C_BCN_CTRL_DIS_TSF_UDT0 ; 
 int /*<<< orphan*/  R92C_DRVERLYINT ; 
 int /*<<< orphan*/  R92C_TBTT_PROHIBIT ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct rtwn_softc *sc)
{
	FUNC1(sc, FUNC0(0), R92C_BCN_CTRL_DIS_TSF_UDT0);
	FUNC1(sc, FUNC0(1), R92C_BCN_CTRL_DIS_TSF_UDT0);
	FUNC2(sc, R92C_TBTT_PROHIBIT, 0x6404);
	FUNC1(sc, R92C_DRVERLYINT, 0x05);
	FUNC1(sc, R92C_BCNDMATIM, 0x02);
	FUNC2(sc, R92C_BCNTCFG, 0x660f);
}