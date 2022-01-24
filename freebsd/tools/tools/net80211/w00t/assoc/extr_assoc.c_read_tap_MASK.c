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
struct params {char* packet; int packet_len; char wep_iv; int /*<<< orphan*/  wep_len; int /*<<< orphan*/  wep_key; int /*<<< orphan*/  tap; } ;
struct ieee80211_frame {char* i_addr3; int /*<<< orphan*/ * i_fc; } ;
typedef  int /*<<< orphan*/  mac ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_FC0_TYPE_DATA ; 
 int /*<<< orphan*/  IEEE80211_FC1_DIR_TODS ; 
 int /*<<< orphan*/  IEEE80211_FC1_PROTECTED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_frame*,struct params*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_frame*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct params *p)
{
	char *ptr;
	int len = sizeof(p->packet);
	int offset;
	char mac[6];
	struct ieee80211_frame *wh;

	ptr = p->packet;
	offset = sizeof(struct ieee80211_frame) + 8 - 14;
	if (p->wep_len)
		offset += 4;

	ptr += offset;
	len -= offset;

	/* read packet */
	FUNC3(p->packet, 0, sizeof(p->packet));
	p->packet_len = FUNC4(p->tap, ptr, len);
	if (p->packet_len == -1)
		FUNC0(1, "read()");

	/* 802.11 header */
	wh = (struct ieee80211_frame*) p->packet;
	FUNC2(mac, ptr, sizeof(mac));
	FUNC1(wh, p);
	FUNC2(wh->i_addr3, mac, sizeof(wh->i_addr3));
	wh->i_fc[0] |= IEEE80211_FC0_TYPE_DATA;
	wh->i_fc[1] |= IEEE80211_FC1_DIR_TODS;
	if (p->wep_len)
		wh->i_fc[1] |= IEEE80211_FC1_PROTECTED;

	/* LLC & SNAP */
	ptr = (char*) (wh+1);
	if (p->wep_len)
		ptr += 4;
	*ptr++ = 0xAA;
	*ptr++ = 0xAA;
	*ptr++ = 0x03;
	*ptr++ = 0x00;
	*ptr++ = 0x00;
	*ptr++ = 0x00;
	/* ether type overlaps w00t */

	p->packet_len += offset;

	/* WEP */
	if (p->wep_len) {
		ptr = (char*) (wh+1);
		FUNC2(ptr, &p->wep_iv, 3);
		ptr[3] = 0;
		p->wep_iv++;

		FUNC5(wh, p->packet_len, p->wep_key, p->wep_len);
		p->packet_len += 4; /* ICV */
	}
}