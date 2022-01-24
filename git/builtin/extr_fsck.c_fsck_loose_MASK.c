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
struct object_id {int dummy; } ;
struct object {int flags; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR_OBJECT ; 
 int HAS_OBJ ; 
 int OBJ_BLOB ; 
 int REACHABLE ; 
 int SEEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  errors_found ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (struct object*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct object_id const*) ; 
 struct object* FUNC6 (int /*<<< orphan*/ ,struct object_id const*,int,unsigned long,void*,int*) ; 
 scalar_t__ FUNC7 (char const*,struct object_id const*,int*,unsigned long*,void**) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC8(const struct object_id *oid, const char *path, void *data)
{
	struct object *obj;
	enum object_type type;
	unsigned long size;
	void *contents;
	int eaten;

	if (FUNC7(path, oid, &type, &size, &contents) < 0) {
		errors_found |= ERROR_OBJECT;
		FUNC2(FUNC1("%s: object corrupt or missing: %s"),
		      FUNC5(oid), path);
		return 0; /* keep checking other objects */
	}

	if (!contents && type != OBJ_BLOB)
		FUNC0("read_loose_object streamed a non-blob");

	obj = FUNC6(the_repository, oid, type, size,
				  contents, &eaten);

	if (!obj) {
		errors_found |= ERROR_OBJECT;
		FUNC2(FUNC1("%s: object could not be parsed: %s"),
		      FUNC5(oid), path);
		if (!eaten)
			FUNC3(contents);
		return 0; /* keep checking other objects */
	}

	obj->flags &= ~(REACHABLE | SEEN);
	obj->flags |= HAS_OBJ;
	if (FUNC4(obj, contents, size))
		errors_found |= ERROR_OBJECT;

	if (!eaten)
		FUNC3(contents);
	return 0; /* keep checking other objects, even if we saw an error */
}