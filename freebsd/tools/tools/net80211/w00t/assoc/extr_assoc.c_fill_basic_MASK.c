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
struct params {int /*<<< orphan*/  seq; int /*<<< orphan*/  bssid; int /*<<< orphan*/  mac; int /*<<< orphan*/  ap; } ;
struct ieee80211_frame {int* i_dur; scalar_t__ i_seq; int /*<<< orphan*/  i_addr3; int /*<<< orphan*/  i_addr2; int /*<<< orphan*/  i_addr1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 short FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct ieee80211_frame *wh, struct params *p)
{
	short *seq;
	
	wh->i_dur[0] = 0x69;
	wh->i_dur[1] = 0x00;

	FUNC0(wh->i_addr1, p->ap, 6);
	FUNC0(wh->i_addr2, p->mac, 6);
	FUNC0(wh->i_addr3, p->bssid, 6);

	seq = (short*)wh->i_seq;
	*seq = FUNC1(p->seq, 0);
}