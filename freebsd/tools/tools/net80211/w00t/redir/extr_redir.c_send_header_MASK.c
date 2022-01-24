#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  long uLong ;
struct queue {int len; int id; } ;
struct TYPE_8__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct params {char* ap; char* mac; char* rtr; char* iv; char* prga; int packet_len; scalar_t__ data_try; TYPE_4__ dst; TYPE_2__ src; scalar_t__ frag; int /*<<< orphan*/  seq; scalar_t__ packet; } ;
struct TYPE_7__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_addr; } ;
struct ip {int ip_v; int ip_hl; int ip_ttl; int /*<<< orphan*/  ip_sum; TYPE_3__ ip_dst; TYPE_1__ ip_src; scalar_t__ ip_p; void* ip_id; void* ip_len; } ;
struct ieee80211_frame {int* i_dur; char* i_addr1; char* i_addr2; char* i_addr3; scalar_t__ i_seq; int /*<<< orphan*/ * i_fc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_FC0_SUBTYPE_DATA ; 
 int /*<<< orphan*/  IEEE80211_FC0_TYPE_DATA ; 
 int /*<<< orphan*/  IEEE80211_FC1_DIR_TODS ; 
 int /*<<< orphan*/  IEEE80211_FC1_MORE_FRAG ; 
 int /*<<< orphan*/  IEEE80211_FC1_PROTECTED ; 
 char* Z_NULL ; 
 long FUNC0 (long,char*,int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct params*) ; 
 short FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct params *p, struct queue *q)
{
	struct ieee80211_frame *wh;
	short *pseq;
	char *ptr;
	struct ip *ih;
	int len, i;
	uLong crc = FUNC0(0L, Z_NULL, 0);
	uLong *pcrc;

	/* 802.11 */
	FUNC4(p->packet, 0, sizeof(p->packet));
	wh = (struct ieee80211_frame *) p->packet;
	wh->i_fc[0] |= IEEE80211_FC0_TYPE_DATA;
	wh->i_fc[0] |= IEEE80211_FC0_SUBTYPE_DATA;
	wh->i_fc[1] |= IEEE80211_FC1_DIR_TODS;
	wh->i_fc[1] |= IEEE80211_FC1_PROTECTED;
	wh->i_fc[1] |= IEEE80211_FC1_MORE_FRAG;

	wh->i_dur[0] = 0x69;

	FUNC3(wh->i_addr1, p->ap, 6);
	FUNC3(wh->i_addr2, p->mac, 6);
	FUNC3(wh->i_addr3, p->rtr, 6);

	pseq = (short*) wh->i_seq;
	p->frag = 0;
	p->seq++;
	*pseq = FUNC6(p->seq, p->frag++);

	/* IV */
	ptr = (char*) (wh+1);
	FUNC3(ptr, p->iv, 3);
	ptr += 4;

	/* LLC/SNAP */
	FUNC3(ptr, "\xAA\xAA\x03\x00\x00\x00\x08\x00", 8);

	/* IP */
	ih = (struct ip*) (ptr+8);
	ih->ip_v = 4;
	ih->ip_hl = 5;
	len = q->len  - sizeof(*wh) - 4 - 4 + 20;
	ih->ip_len = FUNC1(len);
	ih->ip_id = FUNC1(q->id);
	ih->ip_ttl = 69;
	ih->ip_p = 0;
	ih->ip_src.s_addr = p->src.s_addr;
	ih->ip_dst.s_addr = p->dst.s_addr;
	ih->ip_sum = FUNC2((unsigned short*)ih, 20);

	/* ICV */
	len = 8 + 20;
	crc = FUNC0(crc, ptr, len);
	pcrc = (uLong*) (ptr+len);
	*pcrc = crc;

	/* wepify */
	for (i = 0; i < len + 4; i++)
		ptr[i] ^= p->prga[i];

	p->packet_len = sizeof(*wh) + 4 + len + 4;
	p->data_try = 0;
	FUNC5(p);
}