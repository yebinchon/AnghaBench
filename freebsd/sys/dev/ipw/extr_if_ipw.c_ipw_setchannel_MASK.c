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
typedef  int /*<<< orphan*/  uint32_t ;
struct ieee80211com {int dummy; } ;
struct ipw_softc {struct ieee80211com sc_ic; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IPW_CMD_SET_CHANNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*,struct ieee80211_channel*) ; 
 int FUNC3 (struct ipw_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_softc*,struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct ipw_softc *sc, struct ieee80211_channel *chan)
{
	struct ieee80211com *ic = &sc->sc_ic;
	uint32_t data;
	int error;

	data = FUNC1(FUNC2(ic, chan));
	FUNC0(("Setting channel to %u\n", FUNC5(data)));
	error = FUNC3(sc, IPW_CMD_SET_CHANNEL, &data, sizeof data);
	if (error == 0)
		FUNC4(sc, chan);
	return error;
}