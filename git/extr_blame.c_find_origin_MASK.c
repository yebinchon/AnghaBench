#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct repository {int dummy; } ;
struct TYPE_6__ {int recursive; } ;
struct diff_options {int /*<<< orphan*/  pathspec; int /*<<< orphan*/  output_format; scalar_t__ detect_rename; TYPE_1__ flags; } ;
struct diff_filepair {int status; TYPE_4__* one; TYPE_3__* two; } ;
struct TYPE_7__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_2__ object; } ;
struct blame_origin {char const* path; int /*<<< orphan*/  mode; int /*<<< orphan*/  blob_oid; struct commit* commit; struct blame_origin* next; } ;
struct TYPE_10__ {int nr; struct diff_filepair** queue; } ;
struct TYPE_9__ {char* path; int /*<<< orphan*/  mode; int /*<<< orphan*/  oid; } ;
struct TYPE_8__ {char* path; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_FORMAT_NO_OUTPUT ; 
 int PATHSPEC_ALL_MAGIC ; 
 int PATHSPEC_LITERAL ; 
 int /*<<< orphan*/  PATHSPEC_LITERAL_PATH ; 
 struct blame_origin* FUNC0 (struct blame_origin*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct diff_options*) ; 
 TYPE_5__ diff_queued_diff ; 
 int /*<<< orphan*/  FUNC4 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC6 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct diff_options*) ; 
 struct blame_origin* FUNC8 (struct commit*) ; 
 int /*<<< orphan*/  FUNC9 (struct commit*) ; 
 struct blame_origin* FUNC10 (struct commit*,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC14 (struct repository*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC15 (char const*,char const*) ; 

__attribute__((used)) static struct blame_origin *FUNC16(struct repository *r,
					struct commit *parent,
					struct blame_origin *origin)
{
	struct blame_origin *porigin;
	struct diff_options diff_opts;
	const char *paths[2];

	/* First check any existing origins */
	for (porigin = FUNC8(parent); porigin; porigin = porigin->next)
		if (!FUNC15(porigin->path, origin->path)) {
			/*
			 * The same path between origin and its parent
			 * without renaming -- the most common case.
			 */
			return FUNC0 (porigin);
		}

	/* See if the origin->path is different between parent
	 * and origin first.  Most of the time they are the
	 * same and diff-tree is fairly efficient about this.
	 */
	FUNC14(r, &diff_opts);
	diff_opts.flags.recursive = 1;
	diff_opts.detect_rename = 0;
	diff_opts.output_format = DIFF_FORMAT_NO_OUTPUT;
	paths[0] = origin->path;
	paths[1] = NULL;

	FUNC13(&diff_opts.pathspec,
		       PATHSPEC_ALL_MAGIC & ~PATHSPEC_LITERAL,
		       PATHSPEC_LITERAL_PATH, "", paths);
	FUNC4(&diff_opts);

	if (FUNC11(&origin->commit->object.oid))
		FUNC7(FUNC9(parent), &diff_opts);
	else
		FUNC5(FUNC9(parent),
			      FUNC9(origin->commit),
			      "", &diff_opts);
	FUNC6(&diff_opts);

	if (!diff_queued_diff.nr) {
		/* The path is the same as parent */
		porigin = FUNC10(parent, origin->path);
		FUNC12(&porigin->blob_oid, &origin->blob_oid);
		porigin->mode = origin->mode;
	} else {
		/*
		 * Since origin->path is a pathspec, if the parent
		 * commit had it as a directory, we will see a whole
		 * bunch of deletion of files in the directory that we
		 * do not care about.
		 */
		int i;
		struct diff_filepair *p = NULL;
		for (i = 0; i < diff_queued_diff.nr; i++) {
			const char *name;
			p = diff_queued_diff.queue[i];
			name = p->one->path ? p->one->path : p->two->path;
			if (!FUNC15(name, origin->path))
				break;
		}
		if (!p)
			FUNC2("internal error in blame::find_origin");
		switch (p->status) {
		default:
			FUNC2("internal error in blame::find_origin (%c)",
			    p->status);
		case 'M':
			porigin = FUNC10(parent, origin->path);
			FUNC12(&porigin->blob_oid, &p->one->oid);
			porigin->mode = p->one->mode;
			break;
		case 'A':
		case 'T':
			/* Did not exist in parent, or type changed */
			break;
		}
	}
	FUNC3(&diff_opts);
	FUNC1(&diff_opts.pathspec);
	return porigin;
}