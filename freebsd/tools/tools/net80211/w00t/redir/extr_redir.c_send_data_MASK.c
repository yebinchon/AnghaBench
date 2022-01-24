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
struct queue {int len; scalar_t__ wh; } ;
struct params {char* ap; char* mac; char* rtr; int packet_len; scalar_t__ data_try; int /*<<< orphan*/  frag; int /*<<< orphan*/  seq; scalar_t__ packet; struct queue* q; } ;
struct ieee80211_frame {int* i_dur; char* i_addr1; char* i_addr2; char* i_addr3; scalar_t__ i_seq; int /*<<< orphan*/ * i_fc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_FC0_SUBTYPE_DATA ; 
 int /*<<< orphan*/  IEEE80211_FC0_TYPE_DATA ; 
 int /*<<< orphan*/  IEEE80211_FC1_DIR_TODS ; 
 int /*<<< orphan*/  IEEE80211_FC1_PROTECTED ; 
 int /*<<< orphan*/  FUNC0 (struct queue*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct params*) ; 
 short FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct params *p)
{
	struct ieee80211_frame *wh;
	short *seq;
	struct queue *q = p->q;
	char *dst, *src;
	int len;

	FUNC0(q);

	/* 802.11 */
	FUNC2(p->packet, 0, sizeof(p->packet));
	wh = (struct ieee80211_frame*) p->packet;
	wh->i_fc[0] |= IEEE80211_FC0_TYPE_DATA;
	wh->i_fc[0] |= IEEE80211_FC0_SUBTYPE_DATA;
	wh->i_fc[1] |= IEEE80211_FC1_DIR_TODS;
	wh->i_fc[1] |= IEEE80211_FC1_PROTECTED;
	
	wh->i_dur[0] = 0x69;
	
	FUNC1(wh->i_addr1, p->ap, 6);
	FUNC1(wh->i_addr2, p->mac, 6);
	FUNC1(wh->i_addr3, p->rtr, 6);

	seq = (short*) wh->i_seq;
	*seq = FUNC4(p->seq, p->frag++);

	/* data */
	dst = (char*) (wh+1);
	src = (char*) (q->wh+1);
	len = q->len - sizeof(*wh);
	FUNC1(dst, src, len);

	p->packet_len = sizeof(*wh) + len;	
	p->data_try = 0;
	FUNC3(p);
}