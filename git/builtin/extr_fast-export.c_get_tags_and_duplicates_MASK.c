#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rev_cmdline_info {int nr; struct rev_cmdline_entry* rev; } ;
struct rev_cmdline_entry {int flags; TYPE_2__* item; int /*<<< orphan*/  name; } ;
struct object_id {int dummy; } ;
struct TYPE_6__ {int type; int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;
struct TYPE_9__ {scalar_t__ nr; } ;
struct TYPE_8__ {struct commit* util; } ;
struct TYPE_7__ {int type; } ;

/* Variables and functions */
#define  OBJ_BLOB 129 
#define  OBJ_COMMIT 128 
 scalar_t__ OBJ_TAG ; 
 int UNINTERESTING ; 
 char* FUNC0 (TYPE_4__*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  extra_refs ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct commit* FUNC4 (struct rev_cmdline_entry*,char*) ; 
 TYPE_4__ refspecs ; 
 int /*<<< orphan*/  revision_sources ; 
 char** FUNC5 (int /*<<< orphan*/ *,struct commit*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC12(struct rev_cmdline_info *info)
{
	int i;

	for (i = 0; i < info->nr; i++) {
		struct rev_cmdline_entry *e = info->rev + i;
		struct object_id oid;
		struct commit *commit;
		char *full_name;

		if (e->flags & UNINTERESTING)
			continue;

		if (FUNC1(e->name, FUNC9(e->name), &oid, &full_name) != 1)
			continue;

		if (refspecs.nr) {
			char *private;
			private = FUNC0(&refspecs, full_name);
			if (private) {
				FUNC3(full_name);
				full_name = private;
			}
		}

		commit = FUNC4(e, full_name);
		if (!commit) {
			FUNC11("%s: Unexpected object of type %s, skipping.",
				e->name,
				FUNC10(e->item->type));
			continue;
		}

		switch(commit->object.type) {
		case OBJ_COMMIT:
			break;
		case OBJ_BLOB:
			FUNC2(&commit->object.oid);
			continue;
		default: /* OBJ_TAG (nested tags) is already handled */
			FUNC11("Tag points to object of unexpected type %s, skipping.",
				FUNC10(commit->object.type));
			continue;
		}

		/*
		 * Make sure this ref gets properly updated eventually, whether
		 * through a commit or manually at the end.
		 */
		if (e->item->type != OBJ_TAG)
			FUNC6(&extra_refs, full_name)->util = commit;

		if (!*FUNC5(&revision_sources, commit))
			*FUNC5(&revision_sources, commit) = full_name;
	}

	FUNC8(&extra_refs);
	FUNC7(&extra_refs, 0);
}