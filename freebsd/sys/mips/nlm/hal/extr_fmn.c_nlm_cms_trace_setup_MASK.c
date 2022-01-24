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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMS_MSG_CONFIG ; 
 int /*<<< orphan*/  CMS_TRACE_BASE_ADDR ; 
 int /*<<< orphan*/  CMS_TRACE_CONFIG ; 
 int /*<<< orphan*/  CMS_TRACE_LIMIT_ADDR ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 

void FUNC2(uint64_t base, int en, uint64_t trace_base,
				uint64_t trace_limit, int match_dstid_en,
				int dst_id, int match_srcid_en, int src_id,
				int wrap)
{
	uint64_t val;

	FUNC1(base, CMS_TRACE_BASE_ADDR, trace_base);
	FUNC1(base, CMS_TRACE_LIMIT_ADDR, trace_limit);

	val = FUNC0(base, CMS_TRACE_CONFIG);
	val |= (((uint64_t)match_dstid_en << 39) |
		((dst_id & 0xfff) << 24) |
		(match_srcid_en << 23) |
		((src_id & 0xfff) << 8) |
		(wrap << 1) |
		(en << 0));
	FUNC1(base, CMS_MSG_CONFIG, val);
}