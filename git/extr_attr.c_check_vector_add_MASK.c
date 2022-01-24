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
struct attr_check {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr; struct attr_check** checks; int /*<<< orphan*/  alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct attr_check**,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__ check_vector ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct attr_check *c)
{
	FUNC1();

	FUNC0(check_vector.checks,
		   check_vector.nr + 1,
		   check_vector.alloc);
	check_vector.checks[check_vector.nr++] = c;

	FUNC2();
}