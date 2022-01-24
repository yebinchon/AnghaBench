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
struct inode {int dummy; } ;
struct ext4_extent {unsigned long e_blk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct ext4_extent*) ; 
 unsigned long FUNC2 (struct ext4_extent*) ; 

__attribute__((used)) static int
FUNC3(struct inode *ip, struct ext4_extent *ex,
    unsigned long from, unsigned long to)
{
	unsigned long num, start;

	if (from >= ex->e_blk &&
	    to == ex->e_blk + FUNC2(ex) - 1) {
		/* Tail cleanup. */
		num = ex->e_blk + FUNC2(ex) - from;
		start = FUNC1(ex) +
		    FUNC2(ex) - num;
		FUNC0(ip, start, num, 0);
	}

	return (0);
}