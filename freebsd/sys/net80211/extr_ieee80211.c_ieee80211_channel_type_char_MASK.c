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
 scalar_t__ FUNC0 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC1 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC3 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC4 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC5 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC6 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC7 (struct ieee80211_channel const*) ; 

char
FUNC8(const struct ieee80211_channel *c)
{
	if (FUNC6(c))
		return 'S';
	if (FUNC0(c))
		return 'T';
	if (FUNC1(c))
		return 'G';
	if (FUNC7(c))
		return 'v';
	if (FUNC5(c))
		return 'n';
	if (FUNC2(c))
		return 'a';
	if (FUNC3(c))
		return 'g';
	if (FUNC4(c))
		return 'b';
	return 'f';
}