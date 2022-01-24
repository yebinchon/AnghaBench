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
struct ieee80211_rate_table {int dummy; } ;

/* Variables and functions */
 struct ieee80211_rate_table const ieee80211_11a_table ; 
 struct ieee80211_rate_table const ieee80211_11b_table ; 
 struct ieee80211_rate_table const ieee80211_11g_table ; 
 struct ieee80211_rate_table const ieee80211_half_table ; 
 struct ieee80211_rate_table const ieee80211_quarter_table ; 
 struct ieee80211_rate_table const ieee80211_turboa_table ; 
 struct ieee80211_rate_table const ieee80211_turbog_table ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static const struct ieee80211_rate_table *
FUNC1(const char *mode)
{
	if (FUNC0(mode, "half") == 0)
		return &ieee80211_half_table;
	else if (FUNC0(mode, "quarter") == 0)
		return &ieee80211_quarter_table;
	else if (FUNC0(mode, "hta") == 0)
		return &ieee80211_11a_table;	/* XXX */
	else if (FUNC0(mode, "htg") == 0)
		return &ieee80211_11g_table;	/* XXX */
	else if (FUNC0(mode, "108g") == 0)
		return &ieee80211_turbog_table;
	else if (FUNC0(mode, "sturbo") == 0)
		return &ieee80211_turboa_table;
	else if (FUNC0(mode, "turbo") == 0)
		return &ieee80211_turboa_table;
	else if (FUNC0(mode, "11a") == 0)
		return &ieee80211_11a_table;
	else if (FUNC0(mode, "11g") == 0)
		return &ieee80211_11g_table;
	else if (FUNC0(mode, "11b") == 0)
		return &ieee80211_11b_table;
	else
		return NULL;
}