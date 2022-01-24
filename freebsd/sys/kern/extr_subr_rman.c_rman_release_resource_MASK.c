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
struct rman {int /*<<< orphan*/  rm_mtx; } ;
struct resource_i {struct rman* r_rm; } ;
struct resource {struct resource_i* __r_i; } ;

/* Variables and functions */
 int FUNC0 (struct rman*,struct resource_i*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(struct resource *re)
{
	int rv;
	struct resource_i *r;
	struct rman *rm;

	r = re->__r_i;
	rm = r->r_rm;
	FUNC1(rm->rm_mtx);
	rv = FUNC0(rm, r);
	FUNC2(rm->rm_mtx);
	return (rv);
}