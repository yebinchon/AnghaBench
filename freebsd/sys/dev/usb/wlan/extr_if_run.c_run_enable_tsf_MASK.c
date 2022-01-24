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
typedef  int uint32_t ;
struct run_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT2860_BCN_TIME_CFG ; 
 int RT2860_BCN_TX_EN ; 
 int RT2860_TBTT_TIMER_EN ; 
 int RT2860_TSF_TIMER_EN ; 
 scalar_t__ FUNC0 (struct run_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct run_softc *sc)
{
	uint32_t tmp;

	if (FUNC0(sc, RT2860_BCN_TIME_CFG, &tmp) == 0) {
		tmp &= ~(RT2860_BCN_TX_EN | RT2860_TBTT_TIMER_EN);
		tmp |= RT2860_TSF_TIMER_EN;
		FUNC1(sc, RT2860_BCN_TIME_CFG, tmp);
	}
}