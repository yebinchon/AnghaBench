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
struct e1000_hw {int dummy; } ;
struct adapter {int rx_num_queues; struct e1000_hw hw; } ;
typedef  int /*<<< orphan*/  rss_key ;
typedef  int /*<<< orphan*/  reta ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_MRQC ; 
 int E1000_MRQC_RSS_ENABLE_2Q ; 
 int E1000_MRQC_RSS_FIELD_IPV4 ; 
 int E1000_MRQC_RSS_FIELD_IPV4_TCP ; 
 int E1000_MRQC_RSS_FIELD_IPV6 ; 
 int E1000_MRQC_RSS_FIELD_IPV6_EX ; 
 int E1000_MRQC_RSS_FIELD_IPV6_TCP_EX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int RSSKEYLEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct adapter *adapter)
{
	uint8_t  rss_key[4 * RSSKEYLEN];
	uint32_t reta = 0;
	struct e1000_hw	*hw = &adapter->hw;
	int i;

	/*
	 * Configure RSS key
	 */
	FUNC4(rss_key, sizeof(rss_key), 0);
	for (i = 0; i < RSSKEYLEN; ++i) {
		uint32_t rssrk = 0;

		rssrk = FUNC3(rss_key, i);
		FUNC2(hw,FUNC1(i), rssrk);
	}

	/*
	 * Configure RSS redirect table in following fashion:
	 * (hash & ring_cnt_mask) == rdr_table[(hash & rdr_table_mask)]
	 */
	for (i = 0; i < sizeof(reta); ++i) {
		uint32_t q;

		q = (i % adapter->rx_num_queues) << 7;
		reta |= q << (8 * i);
	}

	for (i = 0; i < 32; ++i)
		FUNC2(hw, FUNC0(i), reta);

	FUNC2(hw, E1000_MRQC, E1000_MRQC_RSS_ENABLE_2Q |
			E1000_MRQC_RSS_FIELD_IPV4_TCP |
			E1000_MRQC_RSS_FIELD_IPV4 |
			E1000_MRQC_RSS_FIELD_IPV6_TCP_EX |
			E1000_MRQC_RSS_FIELD_IPV6_EX |
			E1000_MRQC_RSS_FIELD_IPV6);
}