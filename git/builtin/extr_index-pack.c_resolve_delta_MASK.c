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
struct TYPE_3__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  offset; } ;
struct object_entry {TYPE_1__ idx; int /*<<< orphan*/  real_type; int /*<<< orphan*/  size; } ;
struct base_data {int /*<<< orphan*/  size; int /*<<< orphan*/  data; struct object_entry* obj; } ;
struct TYPE_4__ {scalar_t__ delta_depth; int base_object_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ deepest_delta ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (struct base_data*) ; 
 void* FUNC8 (struct object_entry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nr_resolved_deltas ; 
 TYPE_2__* obj_stat ; 
 struct object_entry* objects ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ show_stat ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct object_entry *delta_obj,
			  struct base_data *base, struct base_data *result)
{
	void *base_data, *delta_data;

	if (show_stat) {
		int i = delta_obj - objects;
		int j = base->obj - objects;
		obj_stat[i].delta_depth = obj_stat[j].delta_depth + 1;
		FUNC4();
		if (deepest_delta < obj_stat[i].delta_depth)
			deepest_delta = obj_stat[i].delta_depth;
		FUNC5();
		obj_stat[i].base_object_no = j;
	}
	delta_data = FUNC8(delta_obj);
	base_data = FUNC7(base);
	result->obj = delta_obj;
	result->data = FUNC10(base_data, base->size,
				   delta_data, delta_obj->size, &result->size);
	FUNC6(delta_data);
	if (!result->data)
		FUNC1(delta_obj->idx.offset, FUNC0("failed to apply delta"));
	FUNC9(result->data, result->size,
			 FUNC12(delta_obj->real_type), &delta_obj->idx.oid);
	FUNC11(result->data, NULL, result->size, delta_obj->real_type,
		    &delta_obj->idx.oid);
	FUNC2();
	nr_resolved_deltas++;
	FUNC3();
}