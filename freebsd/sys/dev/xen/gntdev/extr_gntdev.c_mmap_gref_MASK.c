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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  struct vm_object* vm_object_t ;
typedef  scalar_t__ uint32_t ;
struct vm_object {int dummy; } ;
struct per_user_data {int /*<<< orphan*/  user_data_lock; int /*<<< orphan*/  gref_tree; } ;
struct gntdev_gref {int /*<<< orphan*/  file_index; TYPE_1__* page; } ;
struct TYPE_2__ {scalar_t__ object; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  OBJT_PHYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct gntdev_gref* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct gntdev_gref*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_object*) ; 
 int /*<<< orphan*/  gref_tree_head ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct vm_object* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_object*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct vm_object*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct per_user_data *priv_user, struct gntdev_gref *gref_start,
    uint32_t count, vm_size_t size, struct vm_object **object)
{
	vm_object_t mem_obj;
	struct gntdev_gref *gref;

	mem_obj = FUNC6(OBJT_PHYS, size);
	if (mem_obj == NULL)
		return (ENOMEM);

	FUNC4(&priv_user->user_data_lock);
	FUNC2(mem_obj);
	for (gref = gref_start; gref != NULL && count > 0; gref =
	    FUNC1(gref_tree_head, &priv_user->gref_tree, gref)) {
		if (gref->page->object)
			break;

		FUNC8(gref->page, mem_obj,
		    FUNC0(gref->file_index));

		count--;
	}
	FUNC3(mem_obj);
	FUNC5(&priv_user->user_data_lock);

	if (count) {
		FUNC7(mem_obj);
		return (EINVAL);
	}

	*object = mem_obj;

	return (0);

}