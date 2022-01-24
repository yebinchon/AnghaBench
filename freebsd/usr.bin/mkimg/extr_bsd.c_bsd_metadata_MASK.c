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
typedef  scalar_t__ u_int ;
typedef  int lba_t ;

/* Variables and functions */
 int BSD_BOOTBLOCK_SIZE ; 
 scalar_t__ SCHEME_META_IMG_END ; 
 scalar_t__ SCHEME_META_IMG_START ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int secsz ; 

__attribute__((used)) static lba_t
FUNC2(u_int where, lba_t blk)
{

	if (where == SCHEME_META_IMG_START)
		blk += BSD_BOOTBLOCK_SIZE / secsz;
	else if (where == SCHEME_META_IMG_END)
		blk = FUNC1(blk);
	else
		blk = FUNC0(blk);
	return (blk);
}