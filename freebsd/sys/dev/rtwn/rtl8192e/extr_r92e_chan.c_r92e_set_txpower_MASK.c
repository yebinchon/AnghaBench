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
typedef  int /*<<< orphan*/  uint8_t ;
struct rtwn_softc {int ntxchains; } ;
struct ieee80211_channel {int dummy; } ;
typedef  int /*<<< orphan*/  power ;

/* Variables and functions */
 int RTWN_RIDX_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int,struct ieee80211_channel*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct rtwn_softc *sc, struct ieee80211_channel *c)
{
	uint8_t power[RTWN_RIDX_COUNT];
	int i;

	for (i = 0; i < sc->ntxchains; i++) {
		FUNC0(power, 0, sizeof(power));
		/* Compute per-rate Tx power values. */
		FUNC2(sc, i, c, power);
		/* Write per-rate Tx power values to hardware. */
		FUNC1(sc, i, power);
	}
}