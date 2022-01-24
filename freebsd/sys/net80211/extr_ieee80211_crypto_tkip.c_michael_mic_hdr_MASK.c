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
typedef  int uint8_t ;
struct ieee80211_qosframe {int* i_qos; } ;
struct ieee80211_frame_addr4 {int* i_fc; int /*<<< orphan*/  i_addr4; int /*<<< orphan*/  i_addr3; int /*<<< orphan*/  i_addr1; int /*<<< orphan*/  i_addr2; } ;
struct ieee80211_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_ADDR_LEN ; 
 int IEEE80211_FC0_SUBTYPE_QOS ; 
#define  IEEE80211_FC1_DIR_DSTODS 131 
#define  IEEE80211_FC1_DIR_FROMDS 130 
 int IEEE80211_FC1_DIR_MASK ; 
#define  IEEE80211_FC1_DIR_NODS 129 
#define  IEEE80211_FC1_DIR_TODS 128 
 int IEEE80211_QOS_TID ; 

__attribute__((used)) static void
FUNC1(const struct ieee80211_frame *wh0, uint8_t hdr[16])
{
	const struct ieee80211_frame_addr4 *wh =
		(const struct ieee80211_frame_addr4 *) wh0;

	switch (wh->i_fc[1] & IEEE80211_FC1_DIR_MASK) {
	case IEEE80211_FC1_DIR_NODS:
		FUNC0(hdr, wh->i_addr1); /* DA */
		FUNC0(hdr + IEEE80211_ADDR_LEN, wh->i_addr2);
		break;
	case IEEE80211_FC1_DIR_TODS:
		FUNC0(hdr, wh->i_addr3); /* DA */
		FUNC0(hdr + IEEE80211_ADDR_LEN, wh->i_addr2);
		break;
	case IEEE80211_FC1_DIR_FROMDS:
		FUNC0(hdr, wh->i_addr1); /* DA */
		FUNC0(hdr + IEEE80211_ADDR_LEN, wh->i_addr3);
		break;
	case IEEE80211_FC1_DIR_DSTODS:
		FUNC0(hdr, wh->i_addr3); /* DA */
		FUNC0(hdr + IEEE80211_ADDR_LEN, wh->i_addr4);
		break;
	}

	if (wh->i_fc[0] & IEEE80211_FC0_SUBTYPE_QOS) {
		const struct ieee80211_qosframe *qwh =
			(const struct ieee80211_qosframe *) wh;
		hdr[12] = qwh->i_qos[0] & IEEE80211_QOS_TID;
	} else
		hdr[12] = 0;
	hdr[13] = hdr[14] = hdr[15] = 0; /* reserved */
}