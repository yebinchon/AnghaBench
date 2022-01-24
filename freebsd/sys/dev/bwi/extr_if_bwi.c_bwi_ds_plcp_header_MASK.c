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
typedef  int uint8_t ;
struct ieee80211_ds_plcp_hdr {int i_service; int /*<<< orphan*/  i_length; int /*<<< orphan*/  i_signal; } ;

/* Variables and functions */
 int IEEE80211_PLCP_SERVICE_LENEXT7 ; 
 int IEEE80211_PLCP_SERVICE_LOCKED ; 
 int /*<<< orphan*/  IEEE80211_T_CCK ; 
 int NBBY ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC3(struct ieee80211_ds_plcp_hdr *plcp, int pkt_len,
		   uint8_t rate)
{
	int len, service, pkt_bitlen;

	pkt_bitlen = pkt_len * NBBY;
	len = FUNC0(pkt_bitlen * 2, rate);

	service = IEEE80211_PLCP_SERVICE_LOCKED;
	if (rate == (11 * 2)) {
		int pkt_bitlen1;

		/*
		 * PLCP service field needs to be adjusted,
		 * if TX rate is 11Mbytes/s
		 */
		pkt_bitlen1 = len * 11;
		if (pkt_bitlen1 - pkt_bitlen >= NBBY)
			service |= IEEE80211_PLCP_SERVICE_LENEXT7;
	}

	plcp->i_signal = FUNC2(rate, IEEE80211_T_CCK);
	plcp->i_service = service;
	plcp->i_length = FUNC1(len);
	/* NOTE: do NOT touch i_crc */
}