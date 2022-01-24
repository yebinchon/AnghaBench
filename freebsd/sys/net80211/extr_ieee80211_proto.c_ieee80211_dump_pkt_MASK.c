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
struct ieee80211com {int dummy; } ;
struct ieee80211_qosframe {int* i_qos; } ;
struct ieee80211_frame {int* i_fc; int const* i_addr2; int const* i_addr1; int const* i_addr3; } ;

/* Variables and functions */
#define  IEEE80211_FC0_TYPE_DATA 133 
 int IEEE80211_FC0_TYPE_MASK ; 
#define  IEEE80211_FC0_TYPE_MGT 132 
#define  IEEE80211_FC1_DIR_DSTODS 131 
#define  IEEE80211_FC1_DIR_FROMDS 130 
 int IEEE80211_FC1_DIR_MASK ; 
#define  IEEE80211_FC1_DIR_NODS 129 
#define  IEEE80211_FC1_DIR_TODS 128 
 int IEEE80211_FC1_PROTECTED ; 
 int IEEE80211_QOS_ACKPOLICY ; 
 scalar_t__ FUNC0 (struct ieee80211_frame const*) ; 
 int IEEE80211_QOS_TID ; 
 int const IEEE80211_WEP_EXTIV ; 
 int IEEE80211_WEP_IVLEN ; 
 char* FUNC1 (int const*) ; 
 int FUNC2 (struct ieee80211com*,struct ieee80211_frame const*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

void
FUNC5(struct ieee80211com *ic,
	const uint8_t *buf, int len, int rate, int rssi)
{
	const struct ieee80211_frame *wh;
	int i;

	wh = (const struct ieee80211_frame *)buf;
	switch (wh->i_fc[1] & IEEE80211_FC1_DIR_MASK) {
	case IEEE80211_FC1_DIR_NODS:
		FUNC4("NODS %s", FUNC1(wh->i_addr2));
		FUNC4("->%s", FUNC1(wh->i_addr1));
		FUNC4("(%s)", FUNC1(wh->i_addr3));
		break;
	case IEEE80211_FC1_DIR_TODS:
		FUNC4("TODS %s", FUNC1(wh->i_addr2));
		FUNC4("->%s", FUNC1(wh->i_addr3));
		FUNC4("(%s)", FUNC1(wh->i_addr1));
		break;
	case IEEE80211_FC1_DIR_FROMDS:
		FUNC4("FRDS %s", FUNC1(wh->i_addr3));
		FUNC4("->%s", FUNC1(wh->i_addr1));
		FUNC4("(%s)", FUNC1(wh->i_addr2));
		break;
	case IEEE80211_FC1_DIR_DSTODS:
		FUNC4("DSDS %s", FUNC1((const uint8_t *)&wh[1]));
		FUNC4("->%s", FUNC1(wh->i_addr3));
		FUNC4("(%s", FUNC1(wh->i_addr2));
		FUNC4("->%s)", FUNC1(wh->i_addr1));
		break;
	}
	switch (wh->i_fc[0] & IEEE80211_FC0_TYPE_MASK) {
	case IEEE80211_FC0_TYPE_DATA:
		FUNC4(" data");
		break;
	case IEEE80211_FC0_TYPE_MGT:
		FUNC4(" %s", FUNC3(wh->i_fc[0]));
		break;
	default:
		FUNC4(" type#%d", wh->i_fc[0] & IEEE80211_FC0_TYPE_MASK);
		break;
	}
	if (FUNC0(wh)) {
		const struct ieee80211_qosframe *qwh = 
			(const struct ieee80211_qosframe *)buf;
		FUNC4(" QoS [TID %u%s]", qwh->i_qos[0] & IEEE80211_QOS_TID,
			qwh->i_qos[0] & IEEE80211_QOS_ACKPOLICY ? " ACM" : "");
	}
	if (wh->i_fc[1] & IEEE80211_FC1_PROTECTED) {
		int off;

		off = FUNC2(ic, wh);
		FUNC4(" WEP [IV %.02x %.02x %.02x",
			buf[off+0], buf[off+1], buf[off+2]);
		if (buf[off+IEEE80211_WEP_IVLEN] & IEEE80211_WEP_EXTIV)
			FUNC4(" %.02x %.02x %.02x",
				buf[off+4], buf[off+5], buf[off+6]);
		FUNC4(" KID %u]", buf[off+IEEE80211_WEP_IVLEN] >> 6);
	}
	if (rate >= 0)
		FUNC4(" %dM", rate / 2);
	if (rssi >= 0)
		FUNC4(" +%d", rssi);
	FUNC4("\n");
	if (len > 0) {
		for (i = 0; i < len; i++) {
			if ((i & 1) == 0)
				FUNC4(" ");
			FUNC4("%02x", buf[i]);
		}
		FUNC4("\n");
	}
}