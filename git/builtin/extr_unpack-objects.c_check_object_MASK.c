#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct object {int flags; int type; int /*<<< orphan*/  oid; } ;
struct obj_buffer {int /*<<< orphan*/  size; int /*<<< orphan*/  buffer; } ;
struct fsck_options {int dummy; } ;
struct TYPE_4__ {int (* walk ) (struct object*,int,void*,struct fsck_options*) ;} ;

/* Variables and functions */
 int FLAG_OPEN ; 
 int FLAG_WRITTEN ; 
 int OBJ_ANY ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (struct object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__ fsck_options ; 
 scalar_t__ FUNC2 (struct object*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 struct obj_buffer* FUNC3 (struct object*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC6 (struct object*,struct obj_buffer*) ; 

__attribute__((used)) static int FUNC7(struct object *obj, int type, void *data, struct fsck_options *options)
{
	struct obj_buffer *obj_buf;

	if (!obj)
		return 1;

	if (obj->flags & FLAG_WRITTEN)
		return 0;

	if (type != OBJ_ANY && obj->type != type)
		FUNC0("object type mismatch");

	if (!(obj->flags & FLAG_OPEN)) {
		unsigned long size;
		int type = FUNC4(the_repository, &obj->oid, &size);
		if (type != obj->type || type <= 0)
			FUNC0("object of unexpected type");
		obj->flags |= FLAG_WRITTEN;
		return 0;
	}

	obj_buf = FUNC3(obj);
	if (!obj_buf)
		FUNC0("Whoops! Cannot find object '%s'", FUNC5(&obj->oid));
	if (FUNC1(obj, obj_buf->buffer, obj_buf->size, &fsck_options))
		FUNC0("fsck error in packed object");
	fsck_options.walk = check_object;
	if (FUNC2(obj, NULL, &fsck_options))
		FUNC0("Error on reachable objects of %s", FUNC5(&obj->oid));
	FUNC6(obj, obj_buf);
	return 0;
}