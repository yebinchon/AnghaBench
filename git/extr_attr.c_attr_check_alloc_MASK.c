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
struct attr_check {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct attr_check*) ; 
 struct attr_check* FUNC1 (int,int) ; 

struct attr_check *FUNC2(void)
{
	struct attr_check *c = FUNC1(1, sizeof(struct attr_check));

	/* save pointer to the check struct */
	FUNC0(c);

	return c;
}