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
typedef  int uint32_t ;

/* Variables and functions */
 int CMS_MAX_SPILL_SEGMENTS_PER_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CMS_SPILL_ENA ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 

int FUNC3(uint64_t base, int qid, uint64_t spill_base,
				int nsegs)
{
	uint64_t queue_config;
	uint32_t spill_start;

	if (nsegs > CMS_MAX_SPILL_SEGMENTS_PER_QUEUE) {
		return 1;
	}

	queue_config = FUNC1(base,(FUNC0(qid)));

	spill_start = ((spill_base >> 12) & 0x3F);
	/* Spill configuration */
	queue_config = (((uint64_t)CMS_SPILL_ENA << 62) |
				(((spill_base >> 18) & 0x3FFFFF) << 27) |
				(spill_start + nsegs - 1) << 21 |
				(spill_start << 15));

	FUNC2(base,(FUNC0(qid)),queue_config);

	return 0;
}