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
typedef  int /*<<< orphan*/  u_int ;
struct rndtest_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RANDOM_PURE_SAFE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct rndtest_state *rsp, void *buf, u_int count)
{
	/* MarkM: FIX!! Check that this does not swamp the harvester! */
	FUNC0(buf, count, RANDOM_PURE_SAFE);
}