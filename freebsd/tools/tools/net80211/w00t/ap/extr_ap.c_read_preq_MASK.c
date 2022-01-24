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
struct params {char* ssid; } ;
struct ieee80211_frame {int /*<<< orphan*/  i_addr2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct params*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned char*,char*) ; 

void FUNC4(struct params *p, struct ieee80211_frame *wh, int len)
{
	unsigned char *ptr;
	unsigned char *end;
	unsigned char macs[6*3];

	ptr = (unsigned char*) (wh+1);

	/* ssid */
	if (*ptr != 0) {
		FUNC1("weird pr %x\n", *ptr);
		return;
	}
	ptr++;

	end = ptr + (*ptr) + 1;
	*end = 0;
	ptr++;

	FUNC0(macs, wh->i_addr2);
	FUNC1("Probe request for [%s] from %s\n", ptr, macs);

	if ((FUNC3(ptr, "") == 0) || (FUNC3(ptr, p->ssid) == 0))
		FUNC2(p, wh->i_addr2);
}