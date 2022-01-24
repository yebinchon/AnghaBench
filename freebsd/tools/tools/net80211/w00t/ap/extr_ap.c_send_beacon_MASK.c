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
struct params {int /*<<< orphan*/  blast; int /*<<< orphan*/  mac; } ;
struct ieee80211_frame {char* i_addr1; int /*<<< orphan*/ * i_fc; int /*<<< orphan*/  i_addr3; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_FC0_SUBTYPE_BEACON ; 
 int /*<<< orphan*/  IEEE80211_FC0_TYPE_MGT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_frame*,struct params*) ; 
 int FUNC2 (struct params*,struct ieee80211_frame*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct params*,struct ieee80211_frame*,int) ; 

void FUNC8(struct params *p)
{
	char buf[4096];
	struct ieee80211_frame *wh;
	int len;
	char *ptr;

	wh = (struct ieee80211_frame*) buf;

	FUNC5(buf, 0, sizeof(buf));
	FUNC1(wh, p);
	FUNC5(wh->i_addr1, 0xff, 6);
	FUNC4(wh->i_addr3, p->mac, 6);

	wh->i_fc[0] |= IEEE80211_FC0_TYPE_MGT;
	wh->i_fc[0] |= IEEE80211_FC0_SUBTYPE_BEACON;

	len = FUNC2(p, wh);

	/* TIM */
	ptr = (char*)wh + len;
	*ptr++ = 5;
	*ptr++ = 4;
	len +=  2+4;
#if 0
	printf("sending beacon\n");
#endif	
	FUNC7(p, wh, len);

	if (FUNC3(&p->blast, NULL) == -1)
		FUNC0(1, "gettimeofday()");
}