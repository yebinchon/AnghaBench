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
struct params {scalar_t__ packet_try; int /*<<< orphan*/  mac; } ;
struct ieee80211_frame {int /*<<< orphan*/  i_addr1; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct params *p, struct ieee80211_frame *wh, int len)
{
	if (FUNC0(wh->i_addr1, p->mac, 6) == 0)
		p->packet_try = 0;
}