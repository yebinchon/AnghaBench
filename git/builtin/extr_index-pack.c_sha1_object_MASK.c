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
struct tree {int /*<<< orphan*/ * buffer; } ;
struct object_id {int dummy; } ;
struct object_entry {int dummy; } ;
struct object {scalar_t__ type; int /*<<< orphan*/  flags; scalar_t__ parsed; struct object_id const oid; } ;
struct commit {int dummy; } ;
struct blob {struct object object; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_2__ {scalar_t__ have_repository; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FLAG_CHECKED ; 
 int /*<<< orphan*/  OBJECT_INFO_QUICK ; 
 int OBJ_BLOB ; 
 scalar_t__ OBJ_COMMIT ; 
 scalar_t__ OBJ_TREE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct object_entry*) ; 
 void const* FUNC4 (struct commit*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ do_fsck_object ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ FUNC7 (struct object*,void*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fsck_options ; 
 scalar_t__ FUNC8 (struct object*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC9 (struct object_entry*) ; 
 int FUNC10 (struct object_id const*,int /*<<< orphan*/ ) ; 
 struct blob* FUNC11 (int /*<<< orphan*/ ,struct object_id const*) ; 
 scalar_t__ FUNC12 (void const*,void*,unsigned long) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct object_id const*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC14 (struct object_id const*) ; 
 struct object* FUNC15 (int /*<<< orphan*/ ,struct object_id const*,int,unsigned long,void*,int*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 void* FUNC17 (struct object_id const*,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 TYPE_1__* startup_info ; 
 scalar_t__ strict ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC19 (int) ; 

__attribute__((used)) static void FUNC20(const void *data, struct object_entry *obj_entry,
			unsigned long size, enum object_type type,
			const struct object_id *oid)
{
	void *new_data = NULL;
	int collision_test_needed = 0;

	FUNC2(data || obj_entry);

	if (startup_info->have_repository) {
		FUNC16();
		collision_test_needed =
			FUNC10(oid, OBJECT_INFO_QUICK);
		FUNC18();
	}

	if (collision_test_needed && !data) {
		FUNC16();
		if (!FUNC3(obj_entry))
			collision_test_needed = 0;
		FUNC18();
	}
	if (collision_test_needed) {
		void *has_data;
		enum object_type has_type;
		unsigned long has_size;
		FUNC16();
		has_type = FUNC13(the_repository, oid, &has_size);
		if (has_type < 0)
			FUNC5(FUNC1("cannot read existing object info %s"), FUNC14(oid));
		if (has_type != type || has_size != size)
			FUNC5(FUNC1("SHA1 COLLISION FOUND WITH %s !"), FUNC14(oid));
		has_data = FUNC17(oid, &has_type, &has_size);
		FUNC18();
		if (!data)
			data = new_data = FUNC9(obj_entry);
		if (!has_data)
			FUNC5(FUNC1("cannot read existing object %s"), FUNC14(oid));
		if (size != has_size || type != has_type ||
		    FUNC12(data, has_data, size) != 0)
			FUNC5(FUNC1("SHA1 COLLISION FOUND WITH %s !"), FUNC14(oid));
		FUNC6(has_data);
	}

	if (strict || do_fsck_object) {
		FUNC16();
		if (type == OBJ_BLOB) {
			struct blob *blob = FUNC11(the_repository, oid);
			if (blob)
				blob->object.flags |= FLAG_CHECKED;
			else
				FUNC5(FUNC1("invalid blob object %s"), FUNC14(oid));
			if (do_fsck_object &&
			    FUNC7(&blob->object, (void *)data, size, &fsck_options))
				FUNC5(FUNC1("fsck error in packed object"));
		} else {
			struct object *obj;
			int eaten;
			void *buf = (void *) data;

			FUNC2(data && "data can only be NULL for large _blobs_");

			/*
			 * we do not need to free the memory here, as the
			 * buf is deleted by the caller.
			 */
			obj = FUNC15(the_repository, oid, type,
						  size, buf,
						  &eaten);
			if (!obj)
				FUNC5(FUNC1("invalid %s"), FUNC19(type));
			if (do_fsck_object &&
			    FUNC7(obj, buf, size, &fsck_options))
				FUNC5(FUNC1("fsck error in packed object"));
			if (strict && FUNC8(obj, NULL, &fsck_options))
				FUNC5(FUNC1("Not all child objects of %s are reachable"), FUNC14(&obj->oid));

			if (obj->type == OBJ_TREE) {
				struct tree *item = (struct tree *) obj;
				item->buffer = NULL;
				obj->parsed = 0;
			}
			if (obj->type == OBJ_COMMIT) {
				struct commit *commit = (struct commit *) obj;
				if (FUNC4(commit, NULL) != data)
					FUNC0("parse_object_buffer transmogrified our buffer");
			}
			obj->flags |= FLAG_CHECKED;
		}
		FUNC18();
	}

	FUNC6(new_data);
}