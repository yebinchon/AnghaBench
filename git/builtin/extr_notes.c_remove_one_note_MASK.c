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
struct object_id {int /*<<< orphan*/  hash; } ;
struct notes_tree {int dummy; } ;

/* Variables and functions */
 unsigned int IGNORE_MISSING ; 
 char* FUNC0 (char*) ; 
 int FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC3 (char const*,struct object_id*) ; 
 int FUNC4 (struct notes_tree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(struct notes_tree *t, const char *name, unsigned flag)
{
	int status;
	struct object_id oid;
	if (FUNC3(name, &oid))
		return FUNC1(FUNC0("Failed to resolve '%s' as a valid ref."), name);
	status = FUNC4(t, oid.hash);
	if (status)
		FUNC2(stderr, FUNC0("Object %s has no note\n"), name);
	else
		FUNC2(stderr, FUNC0("Removing note for object %s\n"), name);
	return (flag & IGNORE_MISSING) ? 0 : status;
}