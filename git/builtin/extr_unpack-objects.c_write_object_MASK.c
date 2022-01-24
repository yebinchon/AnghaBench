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
struct object {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct blob {TYPE_1__ object; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_4__ {struct object* obj; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_OPEN ; 
 int /*<<< orphan*/  FLAG_WRITTEN ; 
 int OBJ_BLOB ; 
 int /*<<< orphan*/  FUNC0 (struct object*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct blob* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* obj_list ; 
 struct object* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,unsigned long,void*,int*) ; 
 int /*<<< orphan*/  strict ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (void*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(unsigned nr, enum object_type type,
			 void *buf, unsigned long size)
{
	if (!strict) {
		if (FUNC8(buf, size, FUNC7(type),
				      &obj_list[nr].oid) < 0)
			FUNC2("failed to write object");
		FUNC1(nr, type, buf, size);
		FUNC3(buf);
		obj_list[nr].obj = NULL;
	} else if (type == OBJ_BLOB) {
		struct blob *blob;
		if (FUNC8(buf, size, FUNC7(type),
				      &obj_list[nr].oid) < 0)
			FUNC2("failed to write object");
		FUNC1(nr, type, buf, size);
		FUNC3(buf);

		blob = FUNC5(the_repository, &obj_list[nr].oid);
		if (blob)
			blob->object.flags |= FLAG_WRITTEN;
		else
			FUNC2("invalid blob object");
		obj_list[nr].obj = NULL;
	} else {
		struct object *obj;
		int eaten;
		FUNC4(buf, size, FUNC7(type), &obj_list[nr].oid);
		FUNC1(nr, type, buf, size);
		obj = FUNC6(the_repository, &obj_list[nr].oid,
					  type, size, buf,
					  &eaten);
		if (!obj)
			FUNC2("invalid %s", FUNC7(type));
		FUNC0(obj, buf, size);
		obj->flags |= FLAG_OPEN;
		obj_list[nr].obj = obj;
	}
}