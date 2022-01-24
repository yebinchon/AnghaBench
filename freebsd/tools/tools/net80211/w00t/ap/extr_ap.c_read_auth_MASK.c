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
struct params {int /*<<< orphan*/  mac; } ;
struct ieee80211_frame {int /*<<< orphan*/  i_addr2; int /*<<< orphan*/  i_addr1; } ;

/* Variables and functions */
 int FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct params*,int /*<<< orphan*/ ) ; 

void FUNC5(struct params *p, struct ieee80211_frame *wh, int len)
{
	unsigned short *ptr;
	char mac[6*3];

	if (FUNC2(wh->i_addr1, p->mac, 6) != 0)
		return;

	ptr = (unsigned short*) (wh+1);
	if (FUNC0(*ptr) != 0) {
		FUNC3("Unknown auth algo %d\n", FUNC0(*ptr));
		return;
	}
	ptr++;
	if (FUNC0(*ptr) == 1) {
		FUNC1(mac, wh->i_addr2);
		FUNC3("Got auth from %s\n", mac);
		FUNC4(p, wh->i_addr2);
	} else {
		FUNC3("Weird seq in auth %d\n", FUNC0(*ptr));
	}
}