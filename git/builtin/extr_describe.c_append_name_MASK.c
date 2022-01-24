#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct commit_name {int prio; char* path; int name_checked; TYPE_1__* tag; int /*<<< orphan*/  oid; } ;
struct TYPE_3__ {char* tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ all ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void FUNC7(struct commit_name *n, struct strbuf *dst)
{
	if (n->prio == 2 && !n->tag) {
		n->tag = FUNC2(the_repository, &n->oid);
		if (!n->tag || FUNC3(n->tag))
			FUNC1(FUNC0("annotated tag %s not available"), n->path);
	}
	if (n->tag && !n->name_checked) {
		if (!n->tag->tag)
			FUNC1(FUNC0("annotated tag %s has no embedded name"), n->path);
		if (FUNC5(n->tag->tag, all ? n->path + 5 : n->path))
			FUNC6(FUNC0("tag '%s' is really '%s' here"), n->tag->tag, n->path);
		n->name_checked = 1;
	}

	if (n->tag) {
		if (all)
			FUNC4(dst, "tags/");
		FUNC4(dst, n->tag->tag);
	} else {
		FUNC4(dst, n->path);
	}
}