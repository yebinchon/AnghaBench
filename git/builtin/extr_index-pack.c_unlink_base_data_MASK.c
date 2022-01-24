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
struct base_data {int /*<<< orphan*/ * child; struct base_data* base; } ;
struct TYPE_2__ {int /*<<< orphan*/ * base_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct base_data*) ; 
 TYPE_1__* FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct base_data *c)
{
	struct base_data *base = c->base;
	if (base)
		base->child = NULL;
	else
		FUNC1()->base_cache = NULL;
	FUNC0(c);
}