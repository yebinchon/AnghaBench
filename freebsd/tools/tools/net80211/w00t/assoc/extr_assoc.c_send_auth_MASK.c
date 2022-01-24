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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int IEEE80211_FC0_SUBTYPE_AUTH ; 
 int IEEE80211_FC0_TYPE_MGT ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_frame*,struct params*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct params*,char*,int) ; 

void FUNC3(struct params *p)
{
	char buf[2048];
	struct ieee80211_frame *wh;
	char *data;
	int len;

	FUNC1(buf, 0, sizeof(buf));

	wh = (struct ieee80211_frame*) buf;
	FUNC0(wh, p);
	wh->i_fc[0] |= IEEE80211_FC0_TYPE_MGT | IEEE80211_FC0_SUBTYPE_AUTH;

	data = (char*) (wh + 1);

	/* algo */
	*data++ = 0; 
	*data++ = 0;

	/* transaction no. */
	*data++ = 1;
	*data++ = 0;

	/* status code */
	*data++ = 0;
	*data++ = 0;

	len = data - (char*)wh;

	FUNC2(p, buf, len);
}