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
struct params {int /*<<< orphan*/  mac; int /*<<< orphan*/  rx; } ;
struct ieee80211_frame {int* i_fc; int /*<<< orphan*/  i_addr2; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
#define  IEEE80211_FC0_TYPE_CTL 130 
#define  IEEE80211_FC0_TYPE_DATA 129 
 int IEEE80211_FC0_TYPE_MASK ; 
#define  IEEE80211_FC0_TYPE_MGT 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct params*,struct ieee80211_frame*) ; 
 scalar_t__ FUNC2 (struct params*,struct ieee80211_frame*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 struct ieee80211_frame* FUNC4 (char*,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct params*,struct ieee80211_frame*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct params*,struct ieee80211_frame*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct params*,struct ieee80211_frame*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC11(struct params *p)
{
	char buf[4096];
	int rc;
	struct ieee80211_frame *wh;

	rc = FUNC10(p->rx, buf, sizeof(buf));
	if (rc == -1)
		FUNC3(1, "sniff()");
        
	wh = FUNC4(buf, &rc);
	if (!wh)
		return;

	/* filter my own shit */
	if (FUNC5(wh->i_addr2, p->mac, 6) == 0) {
		/* XXX CTL frames */
		if ((wh->i_fc[0] & IEEE80211_FC0_TYPE_MASK) !=
		    IEEE80211_FC0_TYPE_CTL)
			return;
	}

#if 1
	FUNC1(p, wh);
#endif

	if (FUNC2(p, wh, rc)) {
#if 0
		printf("Dup\n");
#endif		
		return;
	}

	switch (wh->i_fc[0] & IEEE80211_FC0_TYPE_MASK) {
	case IEEE80211_FC0_TYPE_MGT:
		FUNC9(p, wh, rc);
		break;
		
	case IEEE80211_FC0_TYPE_CTL:
		FUNC7(p, wh, rc);
		break;
	
	case IEEE80211_FC0_TYPE_DATA:
		FUNC8(p, wh, rc);
		break;
	
	default:
		FUNC6("wtf\n");
		FUNC0();
		break;
	}
}