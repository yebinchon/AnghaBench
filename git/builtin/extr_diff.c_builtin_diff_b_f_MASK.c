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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_6__ {TYPE_1__* items; } ;
struct rev_info {int /*<<< orphan*/  diffopt; TYPE_3__ prune_data; } ;
struct object_array_entry {char const* path; TYPE_2__* item; int /*<<< orphan*/  mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {char* match; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int PATHSPEC_FROMTOP ; 
 int PATHSPEC_LITERAL ; 
 int /*<<< orphan*/  S_IFINVALID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  builtin_diff_usage ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char const*,struct stat*) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct rev_info *revs,
			    int argc, const char **argv,
			    struct object_array_entry **blob)
{
	/* Blob vs file in the working tree*/
	struct stat st;
	const char *path;

	if (argc > 1)
		FUNC12(builtin_diff_usage);

	FUNC0(&revs->prune_data, PATHSPEC_FROMTOP | PATHSPEC_LITERAL);
	path = revs->prune_data.items[0].match;

	if (FUNC10(path, &st))
		FUNC6(FUNC3("failed to stat '%s'"), path);
	if (!(FUNC2(st.st_mode) || FUNC1(st.st_mode)))
		FUNC5(FUNC3("'%s': not a regular file or symlink"), path);

	FUNC8(&revs->diffopt, "o/", "w/");

	if (blob[0]->mode == S_IFINVALID)
		blob[0]->mode = FUNC4(st.st_mode);

	FUNC11(&revs->diffopt,
		     blob[0]->mode, FUNC4(st.st_mode),
		     &blob[0]->item->oid, &null_oid,
		     1, 0,
		     blob[0]->path ? blob[0]->path : path,
		     path);
	FUNC9(&revs->diffopt);
	FUNC7(&revs->diffopt);
	return 0;
}