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
struct tcp_function_block {int /*<<< orphan*/  tfb_refcnt; } ;

/* Variables and functions */
 struct tcp_function_block* FUNC0 (struct tcp_function_block*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcp_function_lock ; 

struct tcp_function_block *
FUNC4(struct tcp_function_block *blk)
{
	struct tcp_function_block *rblk;
	
	FUNC2(&tcp_function_lock);	
	rblk = FUNC0(blk, NULL);
	if (rblk) 
		FUNC1(&rblk->tfb_refcnt);
	FUNC3(&tcp_function_lock);
	return(rblk);
}