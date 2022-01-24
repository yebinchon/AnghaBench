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
struct r92c_rx_stat {int rxdw3; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_RADIOTAP_F_SHORTGI ; 
 int /*<<< orphan*/  IEEE80211_RADIOTAP_F_SHORTPRE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R92C_RXDW3_RATE ; 
 int /*<<< orphan*/  R92C_RXDW3_SPLCP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

uint8_t
FUNC4(const void *buf)
{
	const struct r92c_rx_stat *stat = buf;
	uint8_t flags, rate;

	if (!(stat->rxdw3 & FUNC2(R92C_RXDW3_SPLCP)))
		return (0);

	rate = FUNC0(FUNC3(stat->rxdw3), R92C_RXDW3_RATE);
	if (FUNC1(rate))
		flags = IEEE80211_RADIOTAP_F_SHORTPRE;
	else
		flags = IEEE80211_RADIOTAP_F_SHORTGI;
	return (flags);
}