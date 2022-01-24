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
typedef  int u8 ;
typedef  int u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_RSS_CONFIG_VRT ; 
 int /*<<< orphan*/  A_TP_RSS_SECRET_KEY0 ; 
 scalar_t__ CHELSIO_T5 ; 
 int F_KEYEXTEND ; 
 int F_KEYWREN ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct adapter*) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int const*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct adapter *adap, const u32 *key, int idx,
		      bool sleep_ok)
{
	u8 rss_key_addr_cnt = 16;
	u32 vrt = FUNC5(adap, A_TP_RSS_CONFIG_VRT);

	/*
	 * T6 and later: for KeyMode 3 (per-vf and per-vf scramble),
	 * allows access to key addresses 16-63 by using KeyWrAddrX
	 * as index[5:4](upper 2) into key table
	 */
	if ((FUNC4(adap) > CHELSIO_T5) &&
	    (vrt & F_KEYEXTEND) && (FUNC0(vrt) == 3))
		rss_key_addr_cnt = 32;

	FUNC6(adap, key, 10, A_TP_RSS_SECRET_KEY0, sleep_ok);

	if (idx >= 0 && idx < rss_key_addr_cnt) {
		if (rss_key_addr_cnt > 16)
			FUNC7(adap, A_TP_RSS_CONFIG_VRT,
				     vrt | FUNC2(idx >> 4) |
				     FUNC3(idx) | F_KEYWREN);
		else
			FUNC7(adap, A_TP_RSS_CONFIG_VRT,
				     vrt| FUNC1(idx) | F_KEYWREN);
	}
}