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

/* Variables and functions */
 int FUNC0 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2860_softc*,int /*<<< orphan*/ ,int) ; 
 int RT2860_GP_TIMER_EN ; 
 int RT2860_GP_TIMER_SHIFT ; 
 int /*<<< orphan*/  RT2860_INT_TIMER_CFG ; 
 int /*<<< orphan*/  RT2860_INT_TIMER_EN ; 

__attribute__((used)) static void
FUNC2(struct rt2860_softc *sc, int ms)
{
	uint32_t tmp;

	/* disable GP timer before reprogramming it */
	tmp = FUNC0(sc, RT2860_INT_TIMER_EN);
	FUNC1(sc, RT2860_INT_TIMER_EN, tmp & ~RT2860_GP_TIMER_EN);

	if (ms == 0)
		return;

	tmp = FUNC0(sc, RT2860_INT_TIMER_CFG);
	ms *= 16;	/* Unit: 64us */
	tmp = (tmp & 0xffff) | ms << RT2860_GP_TIMER_SHIFT;
	FUNC1(sc, RT2860_INT_TIMER_CFG, tmp);

	/* enable GP timer */
	tmp = FUNC0(sc, RT2860_INT_TIMER_EN);
	FUNC1(sc, RT2860_INT_TIMER_EN, tmp | RT2860_GP_TIMER_EN);
}