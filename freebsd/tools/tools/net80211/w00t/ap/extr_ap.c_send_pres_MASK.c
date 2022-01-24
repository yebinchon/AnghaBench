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
struct params {char* mac; } ;
struct ieee80211_frame {int /*<<< orphan*/ * i_fc; int /*<<< orphan*/  i_addr3; int /*<<< orphan*/  i_addr1; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_FC0_SUBTYPE_PROBE_RESP ; 
 int /*<<< orphan*/  IEEE80211_FC0_TYPE_MGT ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_frame*,struct params*) ; 
 int FUNC1 (struct params*,struct ieee80211_frame*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct params*,struct ieee80211_frame*,int) ; 

void FUNC6(struct params *p, char *mac)
{
	char buf[4096];
	struct ieee80211_frame *wh;
	int len;

	wh = (struct ieee80211_frame*) buf;

	FUNC3(buf, 0, sizeof(buf));
	FUNC0(wh, p);
	FUNC2(wh->i_addr1, mac, 6);
	FUNC2(wh->i_addr3, p->mac, 6);

	wh->i_fc[0] |= IEEE80211_FC0_TYPE_MGT;
	wh->i_fc[0] |= IEEE80211_FC0_SUBTYPE_PROBE_RESP;

	len = FUNC1(p, wh);

	FUNC4("sending probe response\n");
	FUNC5(p, wh, len);
}