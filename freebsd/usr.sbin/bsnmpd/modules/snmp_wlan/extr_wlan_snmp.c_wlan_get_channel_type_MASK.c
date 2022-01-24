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
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC1 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC3 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC4 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC5 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC6 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC7 (struct ieee80211_channel*) ; 
 int WlanChannelType_dot11a ; 
 int WlanChannelType_dot11b ; 
 int WlanChannelType_dot11g ; 
 int WlanChannelType_fhss ; 
 int WlanChannelType_fiveMHz ; 
 int WlanChannelType_ht ; 
 int WlanChannelType_tenMHz ; 
 int WlanChannelType_turbo ; 

__attribute__((used)) static int32_t
FUNC8(struct ieee80211_channel *c)
{
	if (FUNC3(c))
		return (WlanChannelType_fhss);
	if (FUNC0(c))
		return (WlanChannelType_dot11a);
	if (FUNC2(c))
		return (WlanChannelType_dot11b);
	if (FUNC1(c))
		return (WlanChannelType_dot11g);
	if (FUNC4(c))
		return (WlanChannelType_tenMHz);
	if (FUNC6(c))
		return (WlanChannelType_fiveMHz);
	if (FUNC7(c))
		return (WlanChannelType_turbo);
	if (FUNC5(c))
		return (WlanChannelType_ht);

	return (-1);
}