#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct ieee80211_node {TYPE_1__* ni_chan; } ;
struct ieee80211_ie_vht_operation {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ic_vht_ch_freq2; int /*<<< orphan*/  ic_vht_ch_freq1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int IEEE80211_ELEMID_VHT_OPMODE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int*,char,int) ; 

uint8_t *
FUNC3(uint8_t *frm, struct ieee80211_node *ni)
{
	FUNC2(frm, '\0', sizeof(struct ieee80211_ie_vht_operation));

	frm[0] = IEEE80211_ELEMID_VHT_OPMODE;
	frm[1] = sizeof(struct ieee80211_ie_vht_operation) - 2;
	frm += 2;

	/* 8-bit chanwidth */
	*frm++ = FUNC1(ni->ni_chan);

	/* 8-bit freq1 */
	*frm++ = ni->ni_chan->ic_vht_ch_freq1;

	/* 8-bit freq2 */
	*frm++ = ni->ni_chan->ic_vht_ch_freq2;

	/* 16-bit basic MCS set - just MCS0..7 for NSS=1 for now */
	FUNC0(frm, 0xfffc);

	return (frm);
}