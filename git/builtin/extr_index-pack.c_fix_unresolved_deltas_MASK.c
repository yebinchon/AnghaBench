#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  hash; } ;
struct ref_delta_entry {size_t obj_no; TYPE_1__ oid; } ;
struct oid_array {scalar_t__ nr; int /*<<< orphan*/  oid; } ;
struct hashfile {int dummy; } ;
struct base_data {int /*<<< orphan*/  size; int /*<<< orphan*/  data; int /*<<< orphan*/  obj; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_8__ {scalar_t__ real_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref_delta_entry**,int) ; 
 int /*<<< orphan*/  OBJECT_INFO_FOR_PREFETCH ; 
 scalar_t__ OBJ_REF_DELTA ; 
 struct oid_array OID_ARRAY_INIT ; 
 int /*<<< orphan*/  FUNC1 (struct ref_delta_entry**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct base_data* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct hashfile*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  delta_pos_compare ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct base_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct ref_delta_entry**) ; 
 scalar_t__ FUNC10 () ; 
 int nr_ref_deltas ; 
 int /*<<< orphan*/  nr_resolved_deltas ; 
 TYPE_5__* objects ; 
 int /*<<< orphan*/  FUNC11 (struct oid_array*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct oid_array*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  progress ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int*,int /*<<< orphan*/ *) ; 
 struct ref_delta_entry* ref_deltas ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC17 (int) ; 

__attribute__((used)) static void FUNC18(struct hashfile *f)
{
	struct ref_delta_entry **sorted_by_pos;
	int i;

	/*
	 * Since many unresolved deltas may well be themselves base objects
	 * for more unresolved deltas, we really want to include the
	 * smallest number of base objects that would cover as much delta
	 * as possible by picking the
	 * trunc deltas first, allowing for other deltas to resolve without
	 * additional base objects.  Since most base objects are to be found
	 * before deltas depending on them, a good heuristic is to start
	 * resolving deltas in the same order as their position in the pack.
	 */
	FUNC0(sorted_by_pos, nr_ref_deltas);
	for (i = 0; i < nr_ref_deltas; i++)
		sorted_by_pos[i] = &ref_deltas[i];
	FUNC1(sorted_by_pos, nr_ref_deltas, delta_pos_compare);

	if (FUNC10()) {
		/*
		 * Prefetch the delta bases.
		 */
		struct oid_array to_fetch = OID_ARRAY_INIT;
		for (i = 0; i < nr_ref_deltas; i++) {
			struct ref_delta_entry *d = sorted_by_pos[i];
			if (!FUNC13(the_repository, &d->oid,
						      NULL,
						      OBJECT_INFO_FOR_PREFETCH))
				continue;
			FUNC11(&to_fetch, &d->oid);
		}
		if (to_fetch.nr)
			FUNC15(the_repository,
						   to_fetch.oid, to_fetch.nr);
		FUNC12(&to_fetch);
	}

	for (i = 0; i < nr_ref_deltas; i++) {
		struct ref_delta_entry *d = sorted_by_pos[i];
		enum object_type type;
		struct base_data *base_obj = FUNC3();

		if (objects[d->obj_no].real_type != OBJ_REF_DELTA)
			continue;
		base_obj->data = FUNC16(&d->oid, &type,
						  &base_obj->size);
		if (!base_obj->data)
			continue;

		if (FUNC5(&d->oid, base_obj->data,
				base_obj->size, FUNC17(type)))
			FUNC6(FUNC2("local object %s is corrupt"), FUNC14(&d->oid));
		base_obj->obj = FUNC4(f, d->oid.hash,
					base_obj->data, base_obj->size, type);
		FUNC8(base_obj);
		FUNC7(progress, nr_resolved_deltas);
	}
	FUNC9(sorted_by_pos);
}