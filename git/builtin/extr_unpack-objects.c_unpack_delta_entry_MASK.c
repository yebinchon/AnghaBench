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
struct object_id {int /*<<< orphan*/  hash; } ;
typedef  int off_t ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_4__ {int offset; int /*<<< orphan*/  oid; } ;
struct TYPE_3__ {int rawsz; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int OBJ_REF_DELTA ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct object_id*,int,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ dry_run ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 unsigned char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (unsigned long) ; 
 int has_errors ; 
 scalar_t__ FUNC8 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC10 (struct object_id*) ; 
 struct object_id null_oid ; 
 TYPE_2__* obj_list ; 
 int /*<<< orphan*/  FUNC11 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct object_id*,int /*<<< orphan*/ *) ; 
 void* FUNC14 (struct object_id*,int*,unsigned long*) ; 
 int /*<<< orphan*/  recover ; 
 scalar_t__ FUNC15 (unsigned int,struct object_id*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int,int,void*,unsigned long,void*,unsigned long) ; 
 TYPE_1__* the_hash_algo ; 
 int /*<<< orphan*/  FUNC17 (int) ; 

__attribute__((used)) static void FUNC18(enum object_type type, unsigned long delta_size,
			       unsigned nr)
{
	void *delta_data, *base;
	unsigned long base_size;
	struct object_id base_oid;

	if (type == OBJ_REF_DELTA) {
		FUNC9(base_oid.hash, FUNC5(the_hash_algo->rawsz));
		FUNC17(the_hash_algo->rawsz);
		delta_data = FUNC7(delta_size);
		if (dry_run || !delta_data) {
			FUNC6(delta_data);
			return;
		}
		if (FUNC8(&base_oid))
			; /* Ok we have this one */
		else if (FUNC15(nr, &base_oid,
					      delta_data, delta_size))
			return; /* we are done */
		else {
			/* cannot resolve yet --- queue it */
			FUNC12(&obj_list[nr].oid);
			FUNC1(nr, &base_oid, 0, delta_data, delta_size);
			return;
		}
	} else {
		unsigned base_found = 0;
		unsigned char *pack, c;
		off_t base_offset;
		unsigned lo, mid, hi;

		pack = FUNC5(1);
		c = *pack;
		FUNC17(1);
		base_offset = c & 127;
		while (c & 128) {
			base_offset += 1;
			if (!base_offset || FUNC0(base_offset, 7))
				FUNC2("offset value overflow for delta base object");
			pack = FUNC5(1);
			c = *pack;
			FUNC17(1);
			base_offset = (base_offset << 7) + (c & 127);
		}
		base_offset = obj_list[nr].offset - base_offset;
		if (base_offset <= 0 || base_offset >= obj_list[nr].offset)
			FUNC2("offset value out of bound for delta base object");

		delta_data = FUNC7(delta_size);
		if (dry_run || !delta_data) {
			FUNC6(delta_data);
			return;
		}
		lo = 0;
		hi = nr;
		while (lo < hi) {
			mid = lo + (hi - lo) / 2;
			if (base_offset < obj_list[mid].offset) {
				hi = mid;
			} else if (base_offset > obj_list[mid].offset) {
				lo = mid + 1;
			} else {
				FUNC13(&base_oid, &obj_list[mid].oid);
				base_found = !FUNC10(&base_oid);
				break;
			}
		}
		if (!base_found) {
			/*
			 * The delta base object is itself a delta that
			 * has not been resolved yet.
			 */
			FUNC12(&obj_list[nr].oid);
			FUNC1(nr, &null_oid, base_offset, delta_data, delta_size);
			return;
		}
	}

	if (FUNC15(nr, &base_oid, delta_data, delta_size))
		return;

	base = FUNC14(&base_oid, &type, &base_size);
	if (!base) {
		FUNC3("failed to read delta-pack base object %s",
		      FUNC11(&base_oid));
		if (!recover)
			FUNC4(1);
		has_errors = 1;
		return;
	}
	FUNC16(nr, type, base, base_size, delta_data, delta_size);
	FUNC6(base);
}