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
struct ieee80211_frame {int* i_fc; unsigned char* i_addr3; unsigned char* i_addr1; } ;

/* Variables and functions */
 scalar_t__ FOUND_VICTIM ; 
 int IEEE80211_FC0_SUBTYPE_DATA ; 
 int IEEE80211_FC0_SUBTYPE_MASK ; 
 int IEEE80211_FC0_TYPE_DATA ; 
 int IEEE80211_FC0_TYPE_MASK ; 
 int IEEE80211_FC1_DIR_FROMDS ; 
 int IEEE80211_FC1_DIR_TODS ; 
 int IEEE80211_FC1_PROTECTED ; 
 scalar_t__ SPOOF_MAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_frame*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 
 unsigned char* mymac ; 
 scalar_t__ state ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

void FUNC5(struct ieee80211_frame* wh, int rd) {
	int type,stype;
	
	type = wh->i_fc[0] & IEEE80211_FC0_TYPE_MASK;
	stype = wh->i_fc[0] & IEEE80211_FC0_SUBTYPE_MASK;

	if (type == IEEE80211_FC0_TYPE_DATA && 
	    stype == IEEE80211_FC0_SUBTYPE_DATA) {
		int dlen = rd - sizeof(struct ieee80211_frame);

		if (state == SPOOF_MAC) {
			unsigned char mac[6];
			if (wh->i_fc[1] & IEEE80211_FC1_DIR_TODS) {
				FUNC3(mac, wh->i_addr3, 6);
			} else if (wh->i_fc[1] & IEEE80211_FC1_DIR_FROMDS) {
				FUNC3(mac, wh->i_addr1, 6);
			} else FUNC0(0);

			if (mac[0] == 0xff || mac[0] == 0x1)
				return;

			FUNC3(mymac, mac, 6);	
			FUNC4("Trying to use MAC=(%s)\n", FUNC2(mymac));
			state = FOUND_VICTIM;
			return;
		}

		// wep data!
		if ( (wh->i_fc[1] & IEEE80211_FC1_PROTECTED) &&
		    dlen > (4+8+4)) {
			FUNC1(wh, rd);
		}
	}
}