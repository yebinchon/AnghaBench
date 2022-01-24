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
 int R92C_TXDW4_SCO_SCA ; 
 int R92C_TXDW4_SCO_SCB ; 

__attribute__((used)) static int
FUNC1(struct rtwn_softc *sc, struct ieee80211_channel *c)
{
	if (FUNC0(c))
		return (R92C_TXDW4_SCO_SCA);
	else
		return (R92C_TXDW4_SCO_SCB);
}