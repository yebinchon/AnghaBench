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
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit_graft {scalar_t__ nr_parent; struct object_id* parent; } ;
struct TYPE_4__ {int parsed; int /*<<< orphan*/  oid; } ;
struct commit {int /*<<< orphan*/  date; TYPE_1__ object; struct commit_list* parents; } ;
struct TYPE_6__ {struct commit_list* next; } ;
struct TYPE_5__ {int hexsz; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct commit*,struct commit_list**) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,struct object_id*) ; 
 scalar_t__ grafts_replace_parents ; 
 int /*<<< orphan*/  FUNC3 (struct repository*,struct commit*) ; 
 struct commit* FUNC4 (struct repository*,struct object_id*) ; 
 struct commit_graft* FUNC5 (struct repository*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct repository*,struct object_id*) ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct commit*,int /*<<< orphan*/ ) ; 
 TYPE_2__* the_hash_algo ; 

int FUNC11(struct repository *r, struct commit *item, const void *buffer, unsigned long size, int check_graph)
{
	const char *tail = buffer;
	const char *bufptr = buffer;
	struct object_id parent;
	struct commit_list **pptr;
	struct commit_graft *graft;
	const int tree_entry_len = the_hash_algo->hexsz + 5;
	const int parent_entry_len = the_hash_algo->hexsz + 7;

	if (item->object.parsed)
		return 0;
	item->object.parsed = 1;
	tail += size;
	if (tail <= bufptr + tree_entry_len + 1 || FUNC7(bufptr, "tree ", 5) ||
			bufptr[tree_entry_len] != '\n')
		return FUNC1("bogus commit object %s", FUNC8(&item->object.oid));
	if (FUNC2(bufptr + 5, &parent) < 0)
		return FUNC1("bad tree pointer in commit %s",
			     FUNC8(&item->object.oid));
	FUNC10(item, FUNC6(r, &parent));
	bufptr += tree_entry_len + 1; /* "tree " + "hex sha1" + "\n" */
	pptr = &item->parents;

	graft = FUNC5(r, &item->object.oid);
	while (bufptr + parent_entry_len < tail && !FUNC7(bufptr, "parent ", 7)) {
		struct commit *new_parent;

		if (tail <= bufptr + parent_entry_len + 1 ||
		    FUNC2(bufptr + 7, &parent) ||
		    bufptr[parent_entry_len] != '\n')
			return FUNC1("bad parents in commit %s", FUNC8(&item->object.oid));
		bufptr += parent_entry_len + 1;
		/*
		 * The clone is shallow if nr_parent < 0, and we must
		 * not traverse its real parents even when we unhide them.
		 */
		if (graft && (graft->nr_parent < 0 || grafts_replace_parents))
			continue;
		new_parent = FUNC4(r, &parent);
		if (new_parent)
			pptr = &FUNC0(new_parent, pptr)->next;
	}
	if (graft) {
		int i;
		struct commit *new_parent;
		for (i = 0; i < graft->nr_parent; i++) {
			new_parent = FUNC4(r,
						   &graft->parent[i]);
			if (!new_parent)
				continue;
			pptr = &FUNC0(new_parent, pptr)->next;
		}
	}
	item->date = FUNC9(bufptr, tail);

	if (check_graph)
		FUNC3(r, item);

	return 0;
}