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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tcp_function_block* tcp_func_set_ptr ; 
 int /*<<< orphan*/  tcp_function_lock ; 

__attribute__((used)) static struct tcp_function_block *
FUNC3(void)
{
	struct tcp_function_block *rblk;

	FUNC1(&tcp_function_lock);
	rblk = tcp_func_set_ptr;
	FUNC0(&rblk->tfb_refcnt);
	FUNC2(&tcp_function_lock);
	return (rblk);
}