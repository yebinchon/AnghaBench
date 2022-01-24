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
struct TYPE_2__ {int /*<<< orphan*/  head; } ;
struct rib_head {TYPE_1__ rmhead; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_RTABLE ; 
 int /*<<< orphan*/  FUNC0 (struct rib_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct rib_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rt_freeentry ; 

void
FUNC3(struct rib_head *rh)
{

	FUNC2(&rh->rmhead.head, rt_freeentry, &rh->rmhead.head);

	/* Assume table is already empty */
	FUNC0(rh);
	FUNC1(rh, M_RTABLE);
}