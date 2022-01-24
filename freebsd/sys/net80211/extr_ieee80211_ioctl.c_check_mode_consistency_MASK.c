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
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 struct ieee80211_channel const* IEEE80211_CHAN_ANYC ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_channel const*) ; 
 int FUNC2 (struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_channel const*) ; 
 int FUNC4 (struct ieee80211_channel const*) ; 
 int FUNC5 (struct ieee80211_channel const*) ; 
 int FUNC6 (struct ieee80211_channel const*) ; 
#define  IEEE80211_MODE_11A 133 
#define  IEEE80211_MODE_11B 132 
#define  IEEE80211_MODE_11G 131 
#define  IEEE80211_MODE_11NA 130 
#define  IEEE80211_MODE_11NG 129 
#define  IEEE80211_MODE_STURBO_A 128 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 

__attribute__((used)) static int
FUNC8(const struct ieee80211_channel *c, int mode)
{
	FUNC7(c != IEEE80211_CHAN_ANYC, ("oops, no channel"));

	switch (mode) {
	case IEEE80211_MODE_11B:
		return (FUNC2(c));
	case IEEE80211_MODE_11G:
		return (FUNC1(c) && !FUNC3(c));
	case IEEE80211_MODE_11A:
		return (FUNC0(c) && !FUNC3(c));
	case IEEE80211_MODE_STURBO_A:
		return (FUNC6(c));
	case IEEE80211_MODE_11NA:
		return (FUNC4(c));
	case IEEE80211_MODE_11NG:
		return (FUNC5(c));
	}
	return 1;

}