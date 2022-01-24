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
struct ieee80211com {struct run_softc* ic_softc; } ;

/* Variables and functions */
 int FUNC0 (struct ieee80211com*) ; 
 int /*<<< orphan*/  RT2860_BKOFF_SLOT_CFG ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct ieee80211com *ic = arg;
	struct run_softc *sc = ic->ic_softc;
	uint32_t tmp;

	FUNC1(sc, RT2860_BKOFF_SLOT_CFG, &tmp);
	tmp &= ~0xff;
	tmp |= FUNC0(ic);
	FUNC2(sc, RT2860_BKOFF_SLOT_CFG, tmp);
}