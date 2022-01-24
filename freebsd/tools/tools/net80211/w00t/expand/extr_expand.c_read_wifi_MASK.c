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
struct params {scalar_t__ state; int /*<<< orphan*/  mac; int /*<<< orphan*/  mcast; int /*<<< orphan*/  ap; int /*<<< orphan*/  rx; } ;
struct ieee80211_frame {int* i_fc; int /*<<< orphan*/  i_addr3; int /*<<< orphan*/  i_addr1; int /*<<< orphan*/  i_addr2; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_FC0_SUBTYPE_DATA ; 
 int /*<<< orphan*/  IEEE80211_FC0_TYPE_DATA ; 
 int IEEE80211_FC1_DIR_FROMDS ; 
 scalar_t__ S_START ; 
 int /*<<< orphan*/  FUNC0 (struct params*,char**,struct ieee80211_frame*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (struct ieee80211_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee80211_frame* FUNC3 (char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct params*,struct ieee80211_frame*,int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct params*) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct params*,struct ieee80211_frame*,int) ; 

void FUNC10(struct params *p)
{
	static char *buf = 0;
	static int buflen = 4096;
	struct ieee80211_frame *wh;
	int rc;

	if (!buf) {
		buf = (char*) FUNC5(buflen);
		if (!buf)
			FUNC1(1, "malloc()");
	}
	
	rc = FUNC8(p->rx, buf, buflen);
	if (rc == -1)
		FUNC1(1, "sniff()");

	wh = FUNC3(buf, &rc);
	if (!wh)
		return;

	/* relayed macast */
	if (FUNC2(wh, IEEE80211_FC0_TYPE_DATA,
		       IEEE80211_FC0_SUBTYPE_DATA) &&
	    (wh->i_fc[1] & IEEE80211_FC1_DIR_FROMDS) &&
	    (FUNC6(wh->i_addr2, p->ap, 6) == 0) &&
	    (FUNC6(wh->i_addr1, p->mcast, 5) == 0) &&
	    (FUNC6(p->mac, wh->i_addr3, 6) == 0)) {
		FUNC4(p, wh, rc);
		return;
	}

	/* data */
	if (FUNC2(wh, IEEE80211_FC0_TYPE_DATA,
		       IEEE80211_FC0_SUBTYPE_DATA)) {
		if (!FUNC9(p, wh, rc))
			return;
		
		FUNC0(p, &buf, wh, rc);
		if (p->state == S_START)
			FUNC7(p);
		return;
	}
}