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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_MODE_11A ; 
 int /*<<< orphan*/  IEEE80211_MODE_11B ; 
 int /*<<< orphan*/  IEEE80211_MODE_11G ; 
 int /*<<< orphan*/  IEEE80211_MODE_11NA ; 
 int /*<<< orphan*/  IEEE80211_MODE_11NG ; 
 int /*<<< orphan*/  IEEE80211_MODE_VHT_2GHZ ; 
 int /*<<< orphan*/  IEEE80211_MODE_VHT_5GHZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,scalar_t__*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(const uint8_t bands[], uint32_t flags[], int ht40, int vht80)
{

	flags[0] = 0;
	if (FUNC2(bands, IEEE80211_MODE_11A) ||
	    FUNC2(bands, IEEE80211_MODE_11NA) ||
	    FUNC2(bands, IEEE80211_MODE_VHT_5GHZ)) {
		if (FUNC2(bands, IEEE80211_MODE_11B) ||
		    FUNC2(bands, IEEE80211_MODE_11G) ||
		    FUNC2(bands, IEEE80211_MODE_11NG) ||
		    FUNC2(bands, IEEE80211_MODE_VHT_2GHZ))
			return;

		FUNC1(bands, flags, ht40, vht80);
	} else
		FUNC0(bands, flags, ht40);
}