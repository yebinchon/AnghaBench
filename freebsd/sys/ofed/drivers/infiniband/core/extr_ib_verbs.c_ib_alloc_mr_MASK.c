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
typedef  int /*<<< orphan*/  u32 ;
struct ib_pd {int /*<<< orphan*/  usecnt; TYPE_1__* device; } ;
struct ib_mr {int need_inval; int /*<<< orphan*/ * uobject; struct ib_pd* pd; TYPE_1__* device; } ;
typedef  enum ib_mr_type { ____Placeholder_ib_mr_type } ib_mr_type ;
struct TYPE_2__ {struct ib_mr* (* alloc_mr ) (struct ib_pd*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSYS ; 
 struct ib_mr* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_mr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ib_mr* FUNC3 (struct ib_pd*,int,int /*<<< orphan*/ ) ; 

struct ib_mr *FUNC4(struct ib_pd *pd,
			  enum ib_mr_type mr_type,
			  u32 max_num_sg)
{
	struct ib_mr *mr;

	if (!pd->device->alloc_mr)
		return FUNC0(-ENOSYS);

	mr = pd->device->alloc_mr(pd, mr_type, max_num_sg);
	if (!FUNC1(mr)) {
		mr->device  = pd->device;
		mr->pd      = pd;
		mr->uobject = NULL;
		FUNC2(&pd->usecnt);
		mr->need_inval = false;
	}

	return mr;
}