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
struct mem_range {scalar_t__ base; scalar_t__ name; scalar_t__ size; int flags; } ;
struct mmio_rb_range {struct mem_range mr_param; } ;

/* Variables and functions */
 int MEM_F_IMMUTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mmio_rb_range*) ; 
 int VM_MAXCPU ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mmio_rb_range*) ; 
 struct mmio_rb_range** mmio_hint ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,struct mmio_rb_range**) ; 
 int /*<<< orphan*/  mmio_rb_root ; 
 int /*<<< orphan*/  mmio_rb_tree ; 
 int /*<<< orphan*/  mmio_rwlock ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int 
FUNC6(struct mem_range *memp)
{
	struct mem_range *mr;
	struct mmio_rb_range *entry = NULL;
	int err, perror, i;
	
	FUNC5(&mmio_rwlock);
	err = FUNC3(&mmio_rb_root, memp->base, &entry);
	if (err == 0) {
		mr = &entry->mr_param;
		FUNC1(mr->name == memp->name);
		FUNC1(mr->base == memp->base && mr->size == memp->size); 
		FUNC1((mr->flags & MEM_F_IMMUTABLE) == 0);
		FUNC0(mmio_rb_tree, &mmio_rb_root, entry);

		/* flush Per-vCPU cache */	
		for (i=0; i < VM_MAXCPU; i++) {
			if (mmio_hint[i] == entry)
				mmio_hint[i] = NULL;
		}
	}
	perror = FUNC4(&mmio_rwlock);
	FUNC1(perror == 0);

	if (entry)
		FUNC2(entry);
	
	return (err);
}