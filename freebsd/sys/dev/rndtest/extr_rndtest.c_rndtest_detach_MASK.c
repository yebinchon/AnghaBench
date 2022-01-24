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
struct rndtest_state {int /*<<< orphan*/  rs_to; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rndtest_state*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct rndtest_state *rsp)
{
	FUNC0(&rsp->rs_to);
	FUNC1(rsp, M_DEVBUF);
}