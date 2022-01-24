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
#define  IEEE80211_FC0_SUBTYPE_ASSOC_REQ 133 
#define  IEEE80211_FC0_SUBTYPE_ASSOC_RESP 132 
#define  IEEE80211_FC0_SUBTYPE_AUTH 131 
#define  IEEE80211_FC0_SUBTYPE_BEACON 130 
 int IEEE80211_FC0_SUBTYPE_MASK ; 
#define  IEEE80211_FC0_SUBTYPE_PROBE_REQ 129 
#define  IEEE80211_FC0_SUBTYPE_PROBE_RESP 128 
 int IEEE80211_FC0_SUBTYPE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct params*,struct ieee80211_frame*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct params*,struct ieee80211_frame*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct params*,struct ieee80211_frame*,int) ; 

void FUNC5(struct params *p, struct ieee80211_frame *wh, int len)
{
	switch (wh->i_fc[0] & IEEE80211_FC0_SUBTYPE_MASK) {
	case IEEE80211_FC0_SUBTYPE_PROBE_REQ:
		FUNC4(p, wh, len);
		break;
		
	case IEEE80211_FC0_SUBTYPE_PROBE_RESP:
		break;

	case IEEE80211_FC0_SUBTYPE_AUTH:
		FUNC3(p, wh, len);
		break;

	case IEEE80211_FC0_SUBTYPE_ASSOC_REQ:
		FUNC2(p, wh, len);
		break;

	case IEEE80211_FC0_SUBTYPE_ASSOC_RESP:
	case IEEE80211_FC0_SUBTYPE_BEACON:
		break;

	default:
		FUNC1("wtf %d\n", (wh->i_fc[0] & IEEE80211_FC0_SUBTYPE_MASK) >>
				   IEEE80211_FC0_SUBTYPE_SHIFT);
		FUNC0();
		break;
	}
}