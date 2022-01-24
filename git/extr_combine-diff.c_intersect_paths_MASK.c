#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct diff_queue_struct {int nr; TYPE_3__** queue; } ;
struct combine_diff_path {char* path; struct combine_diff_path* next; TYPE_2__* parent; int /*<<< orphan*/  mode; int /*<<< orphan*/  oid; } ;
struct TYPE_8__ {char* path; int /*<<< orphan*/  mode; int /*<<< orphan*/  oid; } ;
struct TYPE_7__ {TYPE_1__* one; int /*<<< orphan*/  status; TYPE_4__* two; } ;
struct TYPE_6__ {int /*<<< orphan*/  path; int /*<<< orphan*/  status; int /*<<< orphan*/  mode; int /*<<< orphan*/  oid; } ;
struct TYPE_5__ {int /*<<< orphan*/  path; int /*<<< orphan*/  mode; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (struct combine_diff_path*,TYPE_4__*) ; 
 struct diff_queue_struct diff_queued_diff ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct combine_diff_path*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (char const*) ; 
 struct combine_diff_path* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct combine_diff_path *FUNC13(
	struct combine_diff_path *curr,
	int n,
	int num_parent,
	int combined_all_paths)
{
	struct diff_queue_struct *q = &diff_queued_diff;
	struct combine_diff_path *p, **tail = &curr;
	int i, j, cmp;

	if (!n) {
		for (i = 0; i < q->nr; i++) {
			int len;
			const char *path;
			if (FUNC2(q->queue[i]))
				continue;
			path = q->queue[i]->two->path;
			len = FUNC11(path);
			p = FUNC12(FUNC0(num_parent, len));
			p->path = (char *) &(p->parent[num_parent]);
			FUNC5(p->path, path, len);
			p->path[len] = 0;
			p->next = NULL;
			FUNC6(p->parent, 0,
			       sizeof(p->parent[0]) * num_parent);

			FUNC7(&p->oid, &q->queue[i]->two->oid);
			p->mode = q->queue[i]->two->mode;
			FUNC7(&p->parent[n].oid, &q->queue[i]->one->oid);
			p->parent[n].mode = q->queue[i]->one->mode;
			p->parent[n].status = q->queue[i]->status;

			if (combined_all_paths &&
			    FUNC3(p->parent[n].status)) {
				FUNC9(&p->parent[n].path, 0);
				FUNC8(&p->parent[n].path,
					      q->queue[i]->one->path);
			}
			*tail = p;
			tail = &p->next;
		}
		return curr;
	}

	/*
	 * paths in curr (linked list) and q->queue[] (array) are
	 * both sorted in the tree order.
	 */
	i = 0;
	while ((p = *tail) != NULL) {
		cmp = ((i >= q->nr)
		       ? -1 : FUNC1(p, q->queue[i]->two));

		if (cmp < 0) {
			/* p->path not in q->queue[]; drop it */
			*tail = p->next;
			for (j = 0; j < num_parent; j++)
				if (combined_all_paths &&
				    FUNC3(p->parent[j].status))
					FUNC10(&p->parent[j].path);
			FUNC4(p);
			continue;
		}

		if (cmp > 0) {
			/* q->queue[i] not in p->path; skip it */
			i++;
			continue;
		}

		FUNC7(&p->parent[n].oid, &q->queue[i]->one->oid);
		p->parent[n].mode = q->queue[i]->one->mode;
		p->parent[n].status = q->queue[i]->status;
		if (combined_all_paths &&
		    FUNC3(p->parent[n].status))
			FUNC8(&p->parent[n].path,
				      q->queue[i]->one->path);

		tail = &p->next;
		i++;
	}
	return curr;
}