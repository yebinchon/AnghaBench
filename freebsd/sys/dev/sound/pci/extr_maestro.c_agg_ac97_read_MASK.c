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
struct agg_info {int dummy; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int FUNC0 (struct agg_info*,int) ; 

__attribute__((used)) static int
FUNC1(kobj_t obj, void *sc, int regno)
{
	struct agg_info *ess = sc;
	int ret;

	/* XXX sound locking violation: agg_lock(ess); */
	ret = FUNC0(ess, regno);
	/* agg_unlock(ess); */
	return ret;
}