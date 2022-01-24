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
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  WIRELESS_MODE ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC1 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC3 (struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  WIRELESS_MODE_108g ; 
 int /*<<< orphan*/  WIRELESS_MODE_11a ; 
 int /*<<< orphan*/  WIRELESS_MODE_11b ; 
 int /*<<< orphan*/  WIRELESS_MODE_11g ; 
 int /*<<< orphan*/  WIRELESS_MODE_TURBO ; 

__attribute__((used)) static WIRELESS_MODE
FUNC4(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
	if (FUNC1(chan))
		return WIRELESS_MODE_11b;
	if (FUNC2(chan))
		return WIRELESS_MODE_11g;
	if (FUNC0(chan))
		return WIRELESS_MODE_108g;
	if (FUNC3(chan))
		return WIRELESS_MODE_TURBO;
	return WIRELESS_MODE_11a;
}