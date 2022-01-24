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
struct ieee80211_frame {int* i_fc; unsigned char* i_addr3; } ;
typedef  int /*<<< orphan*/  arp_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  ETHERTYPE_ARP ; 
 int IEEE80211_FC0_TYPE_DATA ; 
 int IEEE80211_FC1_DIR_TODS ; 
 int IEEE80211_FC1_PROTECTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned short,unsigned char*,unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_frame*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int) ; 

void FUNC7(int tx, unsigned short op, unsigned char* srcip, 
	      unsigned char* srcmac, unsigned char* dstip, 
	      unsigned char* dstmac) {
	
	static unsigned char arp_pkt[128];
	unsigned char* body;
	unsigned char* ptr;
	struct ieee80211_frame* wh;
	int arp_len;

	FUNC4(arp_pkt, 0, sizeof(arp_pkt));

	// construct ARP
	wh = (struct ieee80211_frame*) arp_pkt;
	FUNC3(wh);

	wh->i_fc[0] |= IEEE80211_FC0_TYPE_DATA;
	wh->i_fc[1] |= IEEE80211_FC1_PROTECTED | IEEE80211_FC1_DIR_TODS;
	FUNC4(wh->i_addr3, 0xff, 6);

	body = (unsigned char*) wh + sizeof(*wh);
	ptr = body;
	ptr += 4; // iv

	FUNC2(ptr, ETHERTYPE_ARP);
	ptr += 8;
	FUNC1(ptr, op, srcmac, srcip, dstmac, dstip);

	FUNC6(body, 8+8+20);
	arp_len = sizeof(*wh) + 4 + 8 + 8 + 20 + 4;
	FUNC0(arp_len < sizeof(arp_pkt));

	FUNC5(tx, arp_pkt, arp_len);
}