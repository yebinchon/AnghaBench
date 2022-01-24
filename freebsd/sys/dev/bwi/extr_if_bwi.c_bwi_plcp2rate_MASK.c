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
typedef  enum ieee80211_phytype { ____Placeholder_ieee80211_phytype } ieee80211_phytype ;

/* Variables and functions */
 int IEEE80211_OFDM_PLCP_RATE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int const) ; 

__attribute__((used)) static __inline uint8_t
FUNC2(const uint32_t plcp0, enum ieee80211_phytype type)
{
	uint32_t plcp = FUNC1(plcp0) & IEEE80211_OFDM_PLCP_RATE_MASK;
	return (FUNC0(plcp, type));
}