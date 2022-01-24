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
struct params {char* mac; int /*<<< orphan*/  seq; } ;
struct ieee80211_frame {char* i_fc; char* i_seq; char* i_addr1; char* i_addr3; char* i_addr2; } ;
typedef  int /*<<< orphan*/  seq ;
typedef  int /*<<< orphan*/  fc ;

/* Variables and functions */
 int IEEE80211_FC1_DIR_FROMDS ; 
 int IEEE80211_FC1_DIR_TODS ; 
 int IEEE80211_FC1_RETRY ; 
 int /*<<< orphan*/  FUNC0 (struct params*,struct ieee80211_frame*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct params*,struct ieee80211_frame*,int) ; 
 unsigned short FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct params *p, struct ieee80211_frame *wh, int len)
{
	char seq[2];
	char fc[2];
	unsigned short *ps;

	/* copy crap */
	FUNC1(fc, wh->i_fc, 2);
	FUNC1(seq, wh->i_seq, 2);

	/* relay frame */
	wh->i_fc[1] &= ~(IEEE80211_FC1_DIR_TODS | IEEE80211_FC1_RETRY);
	wh->i_fc[1] |= IEEE80211_FC1_DIR_FROMDS;
	FUNC1(wh->i_addr1, wh->i_addr3, sizeof(wh->i_addr1));
	FUNC1(wh->i_addr3, wh->i_addr2, sizeof(wh->i_addr3));
	FUNC1(wh->i_addr2, p->mac, sizeof(wh->i_addr2));
        ps = (unsigned short*)wh->i_seq;
        *ps = FUNC3(p->seq, 0);
	
	FUNC2(p, wh, len);
	FUNC0(p, wh, len);

	/* restore */
	FUNC1(wh->i_fc, fc, sizeof(fc));
	FUNC1(wh->i_addr2, wh->i_addr3, sizeof(wh->i_addr2));
	FUNC1(wh->i_addr3, wh->i_addr1, sizeof(wh->i_addr2));
	FUNC1(wh->i_addr1, p->mac, sizeof(wh->i_addr1));
	FUNC1(wh->i_seq, seq, sizeof(seq));
}