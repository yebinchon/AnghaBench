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
struct ieee80211_frame {int* i_fc; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 int IEEE80211_CAPINFO_PRIVACY ; 
 int IEEE80211_FC0_SUBTYPE_ASSOC_REQ ; 
 int IEEE80211_FC0_TYPE_MGT ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_frame*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ victim ; 

void FUNC5(int tx) {
	unsigned char buf[128];
	struct ieee80211_frame* wh = (struct ieee80211_frame*) buf;
	unsigned char* body;
	int ssidlen;

	FUNC2(buf, 0, sizeof(buf));
	FUNC0(wh);
	wh->i_fc[0] |= IEEE80211_FC0_TYPE_MGT | IEEE80211_FC0_SUBTYPE_ASSOC_REQ;

	body = (unsigned char*) wh + sizeof(*wh);
	*body = 1 | IEEE80211_CAPINFO_PRIVACY; // cap
	// cap + interval
	body += 2 + 2;

	// ssid
	*body++ = 0;
	ssidlen = FUNC4(victim.ssid);
	*body++ = ssidlen;
	FUNC1(body, victim.ssid, ssidlen);
	body += ssidlen;

	// rates
	*body++ = 1;
	*body++ = 4;
	*body++ = 2;
	*body++ = 4;
	*body++ = 11;
	*body++ = 22; 

	FUNC3(tx, buf, sizeof(*wh) + 2 + 2 + 2 + 
			    FUNC4(victim.ssid) + 2 + 4);
}