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
struct treeent {unsigned int mode; size_t len; int /*<<< orphan*/  oid; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct treeent**,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct treeent*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  alloc ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 struct treeent** entries ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct object_id*) ; 
 scalar_t__ FUNC4 (char*,char) ; 
 size_t FUNC5 (char*) ; 
 scalar_t__ used ; 

__attribute__((used)) static void FUNC6(unsigned mode, struct object_id *oid, char *path)
{
	struct treeent *ent;
	size_t len = FUNC5(path);
	if (FUNC4(path, '/'))
		FUNC2("path %s contains slash", path);

	FUNC1(ent, name, path, len);
	ent->mode = mode;
	ent->len = len;
	FUNC3(&ent->oid, oid);

	FUNC0(entries, used + 1, alloc);
	entries[used++] = ent;
}