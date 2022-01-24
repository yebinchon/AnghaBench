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
struct rman {int dummy; } ;
struct resource {TYPE_1__* __r_i; } ;
struct TYPE_2__ {int /*<<< orphan*/  r_end; int /*<<< orphan*/  r_start; } ;

/* Variables and functions */
 int FUNC0 (struct rman*) ; 
 int FUNC1 (struct rman*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(struct rman *rm, struct resource *r)
{
	int rv;

	if ((rv = FUNC0(rm)) != 0)
		return (rv);
	return (FUNC1(rm, r->__r_i->r_start, r->__r_i->r_end));
}