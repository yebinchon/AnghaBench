#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dmar_map_entry {scalar_t__ end; scalar_t__ free_down; } ;
struct dmar_gas_match_args {scalar_t__ size; scalar_t__ offset; TYPE_2__* common; TYPE_1__* entry; } ;
struct TYPE_4__ {scalar_t__ lowaddr; int /*<<< orphan*/  alignment; } ;
struct TYPE_3__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 scalar_t__ DMAR_PAGE_SIZE ; 
 int ENOMEM ; 
 struct dmar_map_entry* FUNC0 (struct dmar_map_entry*,int /*<<< orphan*/ ) ; 
 struct dmar_map_entry* FUNC1 (struct dmar_map_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_gas_match_args*,struct dmar_map_entry*) ; 
 scalar_t__ FUNC3 (struct dmar_gas_match_args*,struct dmar_map_entry*,scalar_t__) ; 
 int /*<<< orphan*/  rb_entry ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct dmar_gas_match_args *a, struct dmar_map_entry *prev)
{
	struct dmar_map_entry *l;
	int ret;

	if (prev->end < a->common->lowaddr) {
		a->entry->start = FUNC4(prev->end + DMAR_PAGE_SIZE,
		    a->common->alignment);
		if (FUNC3(a, prev, a->common->lowaddr)) {
			FUNC2(a, prev);
			return (0);
		}
	}
	if (prev->free_down < a->size + a->offset + DMAR_PAGE_SIZE)
		return (ENOMEM);
	l = FUNC0(prev, rb_entry);
	if (l != NULL) {
		ret = FUNC5(a, l);
		if (ret == 0)
			return (0);
	}
	l = FUNC1(prev, rb_entry);
	if (l != NULL)
		return (FUNC5(a, l));
	return (ENOMEM);
}