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
typedef  int uint8_t ;
typedef  size_t uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 size_t max_notify_idx ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 

void
FUNC2(uint8_t *bitmap)
{
	uint32_t idx;

	FUNC0(bitmap);

	for (idx = 0; idx < max_notify_idx; idx++) {
		if (bitmap[idx] & 0x1) {
			bitmap[idx] &= ~1;
			FUNC1(idx);
		}
	}
}