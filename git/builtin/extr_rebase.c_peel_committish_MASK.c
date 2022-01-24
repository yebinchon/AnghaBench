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
struct object {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_COMMIT ; 
 scalar_t__ FUNC0 (char const*,struct object_id*) ; 
 struct object* FUNC1 (int /*<<< orphan*/ ,struct object_id*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,struct object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static struct commit *FUNC3(const char *name)
{
	struct object *obj;
	struct object_id oid;

	if (FUNC0(name, &oid))
		return NULL;
	obj = FUNC1(the_repository, &oid);
	return (struct commit *)FUNC2(name, 0, obj, OBJ_COMMIT);
}