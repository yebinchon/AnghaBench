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
struct params {int dummy; } ;
struct ieee80211_frame {int* i_fc; int /*<<< orphan*/  i_addr2; } ;
struct client {int seq; int /*<<< orphan*/  mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_FC0_SUBTYPE_DATA ; 
 int /*<<< orphan*/  IEEE80211_FC0_TYPE_DATA ; 
 int IEEE80211_FC1_RETRY ; 
 struct client* FUNC0 (struct params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct params*,struct client*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 struct client* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int FUNC9 (struct ieee80211_frame*) ; 

int FUNC10(struct params *p, struct ieee80211_frame *wh, int rc)
{
	struct client *c;
	int s;

	if (!FUNC3(wh, IEEE80211_FC0_TYPE_DATA,
			IEEE80211_FC0_SUBTYPE_DATA))
		return 0;

	s = FUNC9(wh);

	c = FUNC0(p, wh->i_addr2);
	if (!c) {
		c = FUNC5(sizeof(*c));
		if (!c)
			FUNC2(1, "malloc()");

		FUNC7(c, 0, sizeof(*c));
		FUNC6(c->mac, wh->i_addr2, 6);

		c->seq = s-1;
		FUNC1(p, c);
	}

	if (wh->i_fc[1] & IEEE80211_FC1_RETRY) {
		if ( (s <= c->seq) && ((c->seq - s ) < 5)) {
#if 0
			printf("Dup seq %d prev %d\n",
			       s, c->seq);
#endif
			return 1;
		}	
	}	

#if 0
	do {
		char mac[3*6];

		mac2str(mac, c->mac);
		printf("%s seq %d prev %d\n", mac, s, c->seq);
	} while (0);
#endif
	
	c->seq = s;
	return 0;
}