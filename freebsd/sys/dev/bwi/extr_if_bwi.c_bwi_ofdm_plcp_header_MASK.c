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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_OFDM_PLCP_LEN_MASK ; 
 int /*<<< orphan*/  IEEE80211_OFDM_PLCP_RATE_MASK ; 
 int /*<<< orphan*/  IEEE80211_T_OFDM ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC3(uint32_t *plcp0, int pkt_len, uint8_t rate)
{
	uint32_t plcp;

	plcp = FUNC0(FUNC2(rate, IEEE80211_T_OFDM),
		    IEEE80211_OFDM_PLCP_RATE_MASK) |
	       FUNC0(pkt_len, IEEE80211_OFDM_PLCP_LEN_MASK);
	*plcp0 = FUNC1(plcp);
}