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
struct diff_filespec {int oid_valid; int has_more_entries; int /*<<< orphan*/  oid; int /*<<< orphan*/  mode; int /*<<< orphan*/  path; } ;
struct diff_filepair {struct diff_filespec* two; struct diff_filespec* one; } ;
struct combine_diff_path {int /*<<< orphan*/  oid; int /*<<< orphan*/  mode; int /*<<< orphan*/  path; TYPE_1__* parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 struct diff_filespec* FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct diff_filepair* FUNC4 (int) ; 

__attribute__((used)) static struct diff_filepair *FUNC5(struct combine_diff_path *p,
					   int num_parent)
{
	int i;
	struct diff_filepair *pair;
	struct diff_filespec *pool;

	pair = FUNC4(sizeof(*pair));
	pool = FUNC3(FUNC2(num_parent, 1), sizeof(struct diff_filespec));
	pair->one = pool + 1;
	pair->two = pool;

	for (i = 0; i < num_parent; i++) {
		pair->one[i].path = p->path;
		pair->one[i].mode = p->parent[i].mode;
		FUNC1(&pair->one[i].oid, &p->parent[i].oid);
		pair->one[i].oid_valid = !FUNC0(&p->parent[i].oid);
		pair->one[i].has_more_entries = 1;
	}
	pair->one[num_parent - 1].has_more_entries = 0;

	pair->two->path = p->path;
	pair->two->mode = p->mode;
	FUNC1(&pair->two->oid, &p->oid);
	pair->two->oid_valid = !FUNC0(&p->oid);
	return pair;
}