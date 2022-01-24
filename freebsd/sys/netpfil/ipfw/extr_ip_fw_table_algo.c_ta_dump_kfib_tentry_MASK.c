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
struct table_info {int dummy; } ;
struct rtentry {int dummy; } ;
typedef  int /*<<< orphan*/  ipfw_obj_tentry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(void *ta_state, struct table_info *ti, void *e,
    ipfw_obj_tentry *tent)
{
	struct rtentry *rte;

	rte = (struct rtentry *)e;

	return FUNC2(FUNC0(rte), FUNC1(rte), tent);
}