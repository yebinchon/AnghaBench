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
struct params {int /*<<< orphan*/  ssid; } ;
struct ieee80211_frame {int* i_fc; char* i_addr1; char* i_addr3; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int IEEE80211_FC0_SUBTYPE_PROBE_REQ ; 
 int IEEE80211_FC0_TYPE_MGT ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_frame*,struct params*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct params*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct params *p)
{
	char buf[2048];
	struct ieee80211_frame *wh;
	char *data;
	int len;

	FUNC1(buf, 0, sizeof(buf));

	wh = (struct ieee80211_frame*) buf;
	FUNC0(wh, p);
	wh->i_fc[0] |= IEEE80211_FC0_TYPE_MGT | IEEE80211_FC0_SUBTYPE_PROBE_REQ;

	FUNC1(wh->i_addr1, 0xFF, 6);
	FUNC1(wh->i_addr3, 0xFF, 6);

	data = (char*) (wh + 1);
	*data++ = 0; /* SSID */
	*data++ = FUNC4(p->ssid);
	FUNC3(data, p->ssid);
	data += FUNC4(p->ssid);

	*data++ = 1; /* rates */
	*data++ = 4;
	*data++ = 2 | 0x80;
	*data++ = 4 | 0x80;
	*data++ = 11;
	*data++ = 22;

	len = data - (char*)wh;

	FUNC2(p, buf, len);
}