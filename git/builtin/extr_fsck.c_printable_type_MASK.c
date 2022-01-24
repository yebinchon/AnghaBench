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
struct object {scalar_t__ type; int /*<<< orphan*/  oid; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 scalar_t__ OBJ_NONE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct object*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 
 char* FUNC3 (scalar_t__) ; 

__attribute__((used)) static const char *FUNC4(struct object *obj)
{
	const char *ret;

	if (obj->type == OBJ_NONE) {
		enum object_type type = FUNC2(the_repository,
							&obj->oid, NULL);
		if (type > 0)
			FUNC1(the_repository, obj, type, 0);
	}

	ret = FUNC3(obj->type);
	if (!ret)
		ret = FUNC0("unknown");

	return ret;
}