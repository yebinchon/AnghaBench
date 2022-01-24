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
struct ieee80211com {struct ieee80211_channel* ic_curchan; struct rtwn_softc* ic_softc; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,struct ieee80211_channel*) ; 

__attribute__((used)) static void
FUNC3(struct ieee80211com *ic)
{
	struct rtwn_softc *sc = ic->ic_softc;
	struct ieee80211_channel *c = ic->ic_curchan;

	FUNC0(sc);
	FUNC2(sc, c);
	FUNC1(sc);
}