#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct refspec_item {char* dst; } ;
struct object_id {int dummy; } ;
struct known_remote {int /*<<< orphan*/  remote; struct known_remote* next; } ;
struct branches_for_remote {int /*<<< orphan*/  branches; int /*<<< orphan*/  skipped; TYPE_1__* keep; int /*<<< orphan*/  remote; } ;
typedef  int /*<<< orphan*/  refspec ;
struct TYPE_2__ {struct known_remote* list; } ;

/* Variables and functions */
 char const* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct refspec_item*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct refspec_item*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC5(const char *refname,
	const struct object_id *oid, int flags, void *cb_data)
{
	struct branches_for_remote *branches = cb_data;
	struct refspec_item refspec;
	struct known_remote *kr;

	FUNC1(&refspec, 0, sizeof(refspec));
	refspec.dst = (char *)refname;
	if (FUNC2(branches->remote, &refspec))
		return 0;

	/* don't delete a branch if another remote also uses it */
	for (kr = branches->keep->list; kr; kr = kr->next) {
		FUNC1(&refspec, 0, sizeof(refspec));
		refspec.dst = (char *)refname;
		if (!FUNC2(kr->remote, &refspec))
			return 0;
	}

	/* don't delete non-remote-tracking refs */
	if (!FUNC3(refname, "refs/remotes/")) {
		/* advise user how to delete local branches */
		if (FUNC3(refname, "refs/heads/"))
			FUNC4(branches->skipped,
					   FUNC0(refname));
		/* silently skip over other non-remote refs */
		return 0;
	}

	FUNC4(branches->branches, refname);

	return 0;
}