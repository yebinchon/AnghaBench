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
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_channel*) ; 
 int R12A_TXDW5_PRIM_CHAN_20_80_2 ; 
 int R12A_TXDW5_PRIM_CHAN_20_80_3 ; 

__attribute__((used)) static int
FUNC1(struct rtwn_softc *sc, struct ieee80211_channel *c)
{
	/* XXX 80 MHz */
	if (FUNC0(c))
		return (R12A_TXDW5_PRIM_CHAN_20_80_2);
	else
		return (R12A_TXDW5_PRIM_CHAN_20_80_3);
}