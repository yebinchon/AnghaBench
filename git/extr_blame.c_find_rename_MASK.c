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
struct diff_options {int /*<<< orphan*/  pathspec; int /*<<< orphan*/  single_follow; int /*<<< orphan*/  output_format; int /*<<< orphan*/  detect_rename; TYPE_1__ flags; } ;
struct diff_filepair {char status; TYPE_4__* one; TYPE_3__* two; } ;
struct TYPE_7__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_2__ object; } ;
struct blame_origin {int /*<<< orphan*/  mode; int /*<<< orphan*/  blob_oid; int /*<<< orphan*/  path; struct commit* commit; } ;
struct TYPE_10__ {int nr; struct diff_filepair** queue; } ;
struct TYPE_9__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  oid; int /*<<< orphan*/  path; } ;
struct TYPE_8__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_DETECT_RENAME ; 
 int /*<<< orphan*/  DIFF_FORMAT_NO_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_options*) ; 
 TYPE_5__ diff_queued_diff ; 
 int /*<<< orphan*/  FUNC2 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC4 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC6 (struct commit*) ; 
 struct blame_origin* FUNC7 (struct commit*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct repository*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct blame_origin *FUNC12(struct repository *r,
					struct commit *parent,
					struct blame_origin *origin)
{
	struct blame_origin *porigin = NULL;
	struct diff_options diff_opts;
	int i;

	FUNC10(r, &diff_opts);
	diff_opts.flags.recursive = 1;
	diff_opts.detect_rename = DIFF_DETECT_RENAME;
	diff_opts.output_format = DIFF_FORMAT_NO_OUTPUT;
	diff_opts.single_follow = origin->path;
	FUNC2(&diff_opts);

	if (FUNC8(&origin->commit->object.oid))
		FUNC5(FUNC6(parent), &diff_opts);
	else
		FUNC3(FUNC6(parent),
			      FUNC6(origin->commit),
			      "", &diff_opts);
	FUNC4(&diff_opts);

	for (i = 0; i < diff_queued_diff.nr; i++) {
		struct diff_filepair *p = diff_queued_diff.queue[i];
		if ((p->status == 'R' || p->status == 'C') &&
		    !FUNC11(p->two->path, origin->path)) {
			porigin = FUNC7(parent, p->one->path);
			FUNC9(&porigin->blob_oid, &p->one->oid);
			porigin->mode = p->one->mode;
			break;
		}
	}
	FUNC1(&diff_opts);
	FUNC0(&diff_opts.pathspec);
	return porigin;
}