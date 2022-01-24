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
typedef  int /*<<< orphan*/  uint32_t ;
struct eth_classify_header {int /*<<< orphan*/  rule_cnt; int /*<<< orphan*/  echo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(uint32_t cid,
				struct eth_classify_header *hdr,
				uint8_t rule_cnt)
{
	hdr->echo = FUNC0(cid);
	hdr->rule_cnt = rule_cnt;
}