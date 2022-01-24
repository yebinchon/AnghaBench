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
 char IEEE80211_CAPINFO_ESS ; 
 int /*<<< orphan*/  IEEE80211_FC0_SUBTYPE_ASSOC_RESP ; 
 int /*<<< orphan*/  IEEE80211_FC0_TYPE_MGT ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_frame*,struct params*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct params*,struct ieee80211_frame*,int) ; 

void FUNC5(struct params *p, char *mac)
{
	char buf[4096];
	struct ieee80211_frame *wh;
	char *ptr;
	int len;

	wh = (struct ieee80211_frame*) buf;

	FUNC2(buf, 0, sizeof(buf));
	FUNC0(wh, p);
	FUNC1(wh->i_addr1, mac, 6);
	FUNC1(wh->i_addr3, p->mac, 6);

	wh->i_fc[0] |= IEEE80211_FC0_TYPE_MGT;
	wh->i_fc[0] |= IEEE80211_FC0_SUBTYPE_ASSOC_RESP;

	ptr = (char*) (wh+1);
	*ptr |= IEEE80211_CAPINFO_ESS;
	ptr += 2; /* cap */
	ptr += 2; /* status */
	ptr += 2; /* aid */
	
	/* rates */
        *ptr++ = 1;
        *ptr++ = 4;
        *ptr++ = 2 | 0x80;
        *ptr++ = 4 | 0x80;
        *ptr++ = 11;
        *ptr++ = 22;

	len = ptr - ((char*) wh);
	FUNC3("sending assoc response\n");
	FUNC4(p, wh, len);
}