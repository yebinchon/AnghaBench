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
struct repository {TYPE_4__* index; } ;
struct object_id {int dummy; } ;
struct commit_list {TYPE_2__* item; struct commit_list* next; } ;
struct commit {struct commit_list* parents; } ;
struct TYPE_8__ {int cache_nr; TYPE_3__** cache; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {struct object_id oid; } ;
struct TYPE_6__ {TYPE_1__ object; } ;

/* Variables and functions */
 scalar_t__ OBJ_BLOB ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct repository*,struct object_id const*,char const*,struct object_id*,unsigned short*) ; 
 int FUNC2 (TYPE_4__*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct repository*,struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(struct repository *r,
				     struct commit *work_tree, const char *path)
{
	struct commit_list *parents;
	int pos;

	for (parents = work_tree->parents; parents; parents = parents->next) {
		const struct object_id *commit_oid = &parents->item->object.oid;
		struct object_id blob_oid;
		unsigned short mode;

		if (!FUNC1(r, commit_oid, path, &blob_oid, &mode) &&
		    FUNC3(r, &blob_oid, NULL) == OBJ_BLOB)
			return;
	}

	pos = FUNC2(r->index, path, FUNC5(path));
	if (pos >= 0)
		; /* path is in the index */
	else if (-1 - pos < r->index->cache_nr &&
		 !FUNC4(r->index->cache[-1 - pos]->name, path))
		; /* path is in the index, unmerged */
	else
		FUNC0("no such path '%s' in HEAD", path);
}