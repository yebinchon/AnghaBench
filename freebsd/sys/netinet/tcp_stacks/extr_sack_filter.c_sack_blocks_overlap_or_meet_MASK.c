#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct sackblk {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct sack_filter {TYPE_1__* sf_blks; } ;
typedef  size_t int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 size_t SACK_FILTER_BLOCKS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sack_filter*,size_t) ; 

__attribute__((used)) static int32_t
FUNC3(struct sack_filter *sf, struct sackblk *sb, uint32_t skip)
{
	int32_t i;
	
	for(i=0; i<SACK_FILTER_BLOCKS; i++) {
		if (FUNC2(sf, i) == 0)
			continue;
		if (i == skip)
			continue;
		if (FUNC0(sf->sf_blks[i].end, sb->start) &&
		    FUNC1(sf->sf_blks[i].end, sb->end) &&
		    FUNC1(sf->sf_blks[i].start, sb->start)) {
			/** 
			 * The two board blocks meet:
			 *
			 *  board1   |--------|
			 *  board2       |----------|  
			 *    <or>
			 *  board1   |--------|
			 *  board2   |--------------|  
			 *    <or>
			 *  board1   |--------|
			 *  board2   |--------|
			 */
			return(i);
		}
		if (FUNC1(sf->sf_blks[i].start, sb->end) &&
		    FUNC0(sf->sf_blks[i].start, sb->start) &&
		    FUNC0(sf->sf_blks[i].end, sb->end)) {
			/** 
			 * The board block partial meets:
			 *
			 *  board       |--------|
			 *  sack  |----------|  
			 *     <or>
			 *  board       |----|
			 *  sack  |----------|  
			 * 1) Update the board block to the new start
			 *      and
			 * 2) Update the start of this block to my end.
			 */
			return(i);
		}
	}
	return (-1);
}