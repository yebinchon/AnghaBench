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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  NAE_VFBID_DESTMAP_CMD ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC2(uint64_t nae_base)
{
	uint32_t val;
	int dest_vc, vfbid;

	/* 127 is max vfbid */
	for (vfbid = 127; vfbid >= 0; vfbid--) {
		dest_vc = FUNC0(vfbid);
		if (dest_vc < 0)
			continue;
		val = (dest_vc << 16) | (vfbid << 4) | 1;
		FUNC1(nae_base, NAE_VFBID_DESTMAP_CMD, val);
	}
}