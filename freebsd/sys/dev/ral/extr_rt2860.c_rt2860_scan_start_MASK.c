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
struct rt2860_softc {int dummy; } ;
struct ieee80211com {struct rt2860_softc* ic_softc; } ;

/* Variables and functions */
 int FUNC0 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2860_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT2860_BCN_TIME_CFG ; 
 int RT2860_BCN_TX_EN ; 
 int RT2860_TBTT_TIMER_EN ; 
 int RT2860_TSF_TIMER_EN ; 
 int /*<<< orphan*/  FUNC2 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ieee80211com *ic)
{
	struct rt2860_softc *sc = ic->ic_softc;
	uint32_t tmp;

	tmp = FUNC0(sc, RT2860_BCN_TIME_CFG);
	FUNC1(sc, RT2860_BCN_TIME_CFG,
	    tmp & ~(RT2860_BCN_TX_EN | RT2860_TSF_TIMER_EN |
	    RT2860_TBTT_TIMER_EN));
	FUNC2(sc, 0);
}