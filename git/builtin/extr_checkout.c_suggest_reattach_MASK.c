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
struct strbuf {char* buf; } ;
struct rev_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 int ORPHAN_CUTOFF ; 
 char* FUNC0 (char*,char*,int) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ advice_detached_head ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,struct commit*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 struct commit* FUNC5 (struct rev_info*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 

__attribute__((used)) static void FUNC8(struct commit *commit, struct rev_info *revs)
{
	struct commit *c, *last = NULL;
	struct strbuf sb = STRBUF_INIT;
	int lost = 0;
	while ((c = FUNC5(revs)) != NULL) {
		if (lost < ORPHAN_CUTOFF)
			FUNC2(&sb, c);
		last = c;
		lost++;
	}
	if (ORPHAN_CUTOFF < lost) {
		int more = lost - ORPHAN_CUTOFF;
		if (more == 1)
			FUNC2(&sb, last);
		else
			FUNC6(&sb, FUNC1(" ... and %d more.\n"), more);
	}

	FUNC4(stderr,
		FUNC0(
		/* The singular version */
		"Warning: you are leaving %d commit behind, "
		"not connected to\n"
		"any of your branches:\n\n"
		"%s\n",
		/* The plural version */
		"Warning: you are leaving %d commits behind, "
		"not connected to\n"
		"any of your branches:\n\n"
		"%s\n",
		/* Give ngettext() the count */
		lost),
		lost,
		sb.buf);
	FUNC7(&sb);

	if (advice_detached_head)
		FUNC4(stderr,
			FUNC0(
			/* The singular version */
			"If you want to keep it by creating a new branch, "
			"this may be a good time\nto do so with:\n\n"
			" git branch <new-branch-name> %s\n\n",
			/* The plural version */
			"If you want to keep them by creating a new branch, "
			"this may be a good time\nto do so with:\n\n"
			" git branch <new-branch-name> %s\n\n",
			/* Give ngettext() the count */
			lost),
			FUNC3(&commit->object.oid, DEFAULT_ABBREV));
}