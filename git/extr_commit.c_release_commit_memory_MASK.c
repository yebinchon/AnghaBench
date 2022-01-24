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
struct parsed_object_pool {int dummy; } ;
struct TYPE_2__ {scalar_t__ parsed; } ;
struct commit {TYPE_1__ object; int /*<<< orphan*/  parents; scalar_t__ index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parsed_object_pool*,struct commit*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct commit*,int /*<<< orphan*/ *) ; 

void FUNC3(struct parsed_object_pool *pool, struct commit *c)
{
	FUNC2(c, NULL);
	FUNC0(pool, c);
	c->index = 0;
	FUNC1(c->parents);

	c->object.parsed = 0;
}