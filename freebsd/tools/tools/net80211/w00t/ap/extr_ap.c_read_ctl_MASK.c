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
struct ieee80211_frame {int* i_fc; } ;

/* Variables and functions */
#define  IEEE80211_FC0_SUBTYPE_ACK 130 
#define  IEEE80211_FC0_SUBTYPE_CTS 129 
 int IEEE80211_FC0_SUBTYPE_MASK ; 
#define  IEEE80211_FC0_SUBTYPE_RTS 128 
 int IEEE80211_FC0_SUBTYPE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct params*,struct ieee80211_frame*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct params*,struct ieee80211_frame*,int) ; 

void FUNC4(struct params *p, struct ieee80211_frame *wh, int len)
{
	switch (wh->i_fc[0] & IEEE80211_FC0_SUBTYPE_MASK) {
	case IEEE80211_FC0_SUBTYPE_RTS:
		FUNC3(p, wh, len);
		break;

	case IEEE80211_FC0_SUBTYPE_ACK:
		FUNC2(p, wh, len);
		break;

	case IEEE80211_FC0_SUBTYPE_CTS:
		break;

	default:
		FUNC1("wtf %d\n", (wh->i_fc[0] & IEEE80211_FC0_SUBTYPE_MASK) >>
		       IEEE80211_FC0_SUBTYPE_SHIFT);
		FUNC0();
		break;
	}
#if 0
	printf("ctl\n");
#endif	
}