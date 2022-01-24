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
struct params {int /*<<< orphan*/  ap; int /*<<< orphan*/  mac; int /*<<< orphan*/  rx; } ;
struct ieee80211_frame {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_FC0_SUBTYPE_AUTH ; 
 int /*<<< orphan*/  IEEE80211_FC0_TYPE_MGT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_frame*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_frame*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_frame*,struct params*,int) ; 
 struct ieee80211_frame* FUNC5 (char*,int*) ; 
 int FUNC6 (short) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC9(struct params *p)
{
	char buf[4096];
	int rc;
	struct ieee80211_frame *wh;
	short *data;

	rc = FUNC8(p->rx, buf, sizeof(buf));
	if (rc == -1)
		FUNC0(1, "sniff()");

	wh = FUNC5(buf, &rc);
	if (!wh)
		return 0;

	FUNC4(wh, p, rc);

	if (!FUNC1(wh, p->mac))
		return 0;

	if (!FUNC3(wh, p->ap))
		return 0;

	if (!FUNC2(wh, IEEE80211_FC0_TYPE_MGT,
			IEEE80211_FC0_SUBTYPE_AUTH))
		return 0;

	data = (short*) (wh+1);
	
	/* algo */
	if (FUNC6(*data) != 0) {
		FUNC7("Not open-system %d!\n", FUNC6(*data));
		return 0;
	}
	data++;
	
	/* transaction no. */
	if (FUNC6(*data) != 2) {
		FUNC7("Got transaction %d!\n", FUNC6(*data));
		return 0;
	}
	data++;

	/* status code */
	rc = FUNC6(*data);
	if (rc == 0) {
		FUNC7("Authenticated\n");
		return 1;
	}

	FUNC7("Authentication failed code=%d\n", rc);
	return 0;
}