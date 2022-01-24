#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nr; TYPE_1__* objects; } ;
struct rev_info {TYPE_2__ pending; } ;
struct object {int flags; int /*<<< orphan*/  oid; } ;
struct child_process {int in; int out; int git_cmd; int /*<<< orphan*/  args; } ;
struct TYPE_6__ {int hexsz; } ;
struct TYPE_4__ {struct object* item; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct child_process*) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct child_process*) ; 
 TYPE_3__* the_hash_algo ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int) ; 

__attribute__((used)) static int FUNC11(int bundle_fd, struct rev_info *revs)
{
	struct child_process pack_objects = CHILD_PROCESS_INIT;
	int i;

	FUNC1(&pack_objects.args,
			 "pack-objects", "--all-progress-implied",
			 "--stdout", "--thin", "--delta-base-offset",
			 NULL);
	pack_objects.in = -1;
	pack_objects.out = bundle_fd;
	pack_objects.git_cmd = 1;

	/*
	 * start_command() will close our descriptor if it's >1. Duplicate it
	 * to avoid surprising the caller.
	 */
	if (pack_objects.out > 1) {
		pack_objects.out = FUNC4(pack_objects.out);
		if (pack_objects.out < 0) {
			FUNC6(FUNC0("unable to dup bundle descriptor"));
			FUNC2(&pack_objects);
			return -1;
		}
	}

	if (FUNC9(&pack_objects))
		return FUNC5(FUNC0("Could not spawn pack-objects"));

	for (i = 0; i < revs->pending.nr; i++) {
		struct object *object = revs->pending.objects[i].item;
		if (object->flags & UNINTERESTING)
			FUNC10(pack_objects.in, "^", 1);
		FUNC10(pack_objects.in, FUNC8(&object->oid), the_hash_algo->hexsz);
		FUNC10(pack_objects.in, "\n", 1);
	}
	FUNC3(pack_objects.in);
	if (FUNC7(&pack_objects))
		return FUNC5(FUNC0("pack-objects died"));
	return 0;
}