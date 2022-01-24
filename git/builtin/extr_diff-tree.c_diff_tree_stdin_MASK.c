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
struct tree {int dummy; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 scalar_t__ OBJ_COMMIT ; 
 scalar_t__ OBJ_TREE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct object_id*) ; 
 struct object* FUNC2 (int /*<<< orphan*/ ,struct object_id*) ; 
 scalar_t__ FUNC3 (char*,struct object_id*,char const**) ; 
 int FUNC4 (struct commit*,char const*) ; 
 int FUNC5 (struct tree*,char const*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  the_repository ; 
 char* FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(char *line)
{
	int len = FUNC6(line);
	struct object_id oid;
	struct object *obj;
	const char *p;

	if (!len || line[len-1] != '\n')
		return -1;
	line[len-1] = 0;
	if (FUNC3(line, &oid, &p))
		return -1;
	obj = FUNC2(the_repository, &oid);
	if (!obj)
		return -1;
	if (obj->type == OBJ_COMMIT)
		return FUNC4((struct commit *)obj, p);
	if (obj->type == OBJ_TREE)
		return FUNC5((struct tree *)obj, p);
	FUNC0("Object %s is a %s, not a commit or tree",
	      FUNC1(&oid), FUNC7(obj->type));
	return -1;
}