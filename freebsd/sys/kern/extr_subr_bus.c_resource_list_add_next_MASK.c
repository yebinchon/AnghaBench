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
struct resource_list {int dummy; } ;
typedef  int /*<<< orphan*/  rman_res_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct resource_list*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct resource_list*,int,int) ; 

int
FUNC2(struct resource_list *rl, int type, rman_res_t start,
    rman_res_t end, rman_res_t count)
{
	int rid;

	rid = 0;
	while (FUNC1(rl, type, rid) != NULL)
		rid++;
	FUNC0(rl, type, rid, start, end, count);
	return (rid);
}