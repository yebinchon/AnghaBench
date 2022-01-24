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
struct attr_check {int /*<<< orphan*/  stack; scalar_t__ all_attrs_nr; int /*<<< orphan*/  all_attrs; scalar_t__ nr; scalar_t__ alloc; int /*<<< orphan*/  items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct attr_check *check)
{
	FUNC0(check->items);
	check->alloc = 0;
	check->nr = 0;

	FUNC0(check->all_attrs);
	check->all_attrs_nr = 0;

	FUNC1(&check->stack);
}