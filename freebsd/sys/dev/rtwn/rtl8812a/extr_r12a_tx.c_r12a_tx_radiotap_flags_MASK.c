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
struct r12a_tx_desc {int txdw5; int /*<<< orphan*/  txdw4; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_RADIOTAP_F_SHORTGI ; 
 int /*<<< orphan*/  IEEE80211_RADIOTAP_F_SHORTPRE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R12A_TXDW4_DATARATE ; 
 int /*<<< orphan*/  R12A_TXDW5_DATA_SHORT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

uint8_t
FUNC4(const void *buf)
{
	const struct r12a_tx_desc *txd = buf;
	uint8_t flags, rate;

	if (!(txd->txdw5 & FUNC2(R12A_TXDW5_DATA_SHORT)))
		return (0);

	rate = FUNC0(FUNC3(txd->txdw4), R12A_TXDW4_DATARATE);
	if (FUNC1(rate))
		flags = IEEE80211_RADIOTAP_F_SHORTPRE;
	else
		flags = IEEE80211_RADIOTAP_F_SHORTGI;
	return (flags);
}