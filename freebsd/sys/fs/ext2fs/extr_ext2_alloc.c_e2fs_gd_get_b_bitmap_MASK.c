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
struct ext2_gd {int ext2bgd_b_bitmap; scalar_t__ ext4bgd_b_bitmap_hi; } ;

/* Variables and functions */

uint64_t
FUNC0(struct ext2_gd *gd)
{

	return (((uint64_t)(gd->ext4bgd_b_bitmap_hi) << 32) |
	    gd->ext2bgd_b_bitmap);
}