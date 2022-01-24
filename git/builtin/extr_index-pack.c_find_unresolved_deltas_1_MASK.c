#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct object_entry {scalar_t__ real_type; } ;
struct base_data {int ref_last; int ofs_last; size_t ref_first; size_t ofs_first; TYPE_2__* obj; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {int obj_no; } ;
struct TYPE_7__ {int obj_no; } ;
struct TYPE_5__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  oid; } ;
struct TYPE_6__ {scalar_t__ real_type; TYPE_1__ idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ OBJ_OFS_DELTA ; 
 int /*<<< orphan*/  OBJ_REF_DELTA ; 
 struct base_data* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct base_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct base_data*,struct base_data*) ; 
 struct object_entry* objects ; 
 TYPE_4__* ofs_deltas ; 
 TYPE_3__* ref_deltas ; 
 int /*<<< orphan*/  FUNC9 (struct object_entry*,struct base_data*,struct base_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct base_data*) ; 

__attribute__((used)) static struct base_data *FUNC11(struct base_data *base,
						  struct base_data *prev_base)
{
	if (base->ref_last == -1 && base->ofs_last == -1) {
		FUNC5(&base->obj->idx.oid,
					&base->ref_first, &base->ref_last,
					OBJ_REF_DELTA);

		FUNC4(base->obj->idx.offset,
					&base->ofs_first, &base->ofs_last,
					OBJ_OFS_DELTA);

		if (base->ref_last == -1 && base->ofs_last == -1) {
			FUNC6(base->data);
			return NULL;
		}

		FUNC8(prev_base, base);
	}

	if (base->ref_first <= base->ref_last) {
		struct object_entry *child = objects + ref_deltas[base->ref_first].obj_no;
		struct base_data *result = FUNC1();

		if (!FUNC3(&child->real_type, OBJ_REF_DELTA,
					   base->obj->real_type))
			FUNC0("child->real_type != OBJ_REF_DELTA");

		FUNC9(child, base, result);
		if (base->ref_first == base->ref_last && base->ofs_last == -1)
			FUNC7(base);

		base->ref_first++;
		return result;
	}

	if (base->ofs_first <= base->ofs_last) {
		struct object_entry *child = objects + ofs_deltas[base->ofs_first].obj_no;
		struct base_data *result = FUNC1();

		FUNC2(child->real_type == OBJ_OFS_DELTA);
		child->real_type = base->obj->real_type;
		FUNC9(child, base, result);
		if (base->ofs_first == base->ofs_last)
			FUNC7(base);

		base->ofs_first++;
		return result;
	}

	FUNC10(base);
	return NULL;
}