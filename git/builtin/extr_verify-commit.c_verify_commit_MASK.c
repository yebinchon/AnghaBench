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
struct object {scalar_t__ type; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 scalar_t__ OBJ_COMMIT ; 
 int FUNC0 (char*,char const*,...) ; 
 scalar_t__ FUNC1 (char const*,struct object_id*) ; 
 struct object* FUNC2 (int /*<<< orphan*/ ,struct object_id*) ; 
 int FUNC3 (struct commit*,unsigned int) ; 
 int /*<<< orphan*/  the_repository ; 
 char* FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(const char *name, unsigned flags)
{
	struct object_id oid;
	struct object *obj;

	if (FUNC1(name, &oid))
		return FUNC0("commit '%s' not found.", name);

	obj = FUNC2(the_repository, &oid);
	if (!obj)
		return FUNC0("%s: unable to read file.", name);
	if (obj->type != OBJ_COMMIT)
		return FUNC0("%s: cannot verify a non-commit object of type %s.",
				name, FUNC4(obj->type));

	return FUNC3((struct commit *)obj, flags);
}