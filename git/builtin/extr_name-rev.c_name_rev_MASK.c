#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  timestamp_t ;
struct rev_name {char const* tip_name; int generation; int distance; int from_tag; int /*<<< orphan*/  taggerdate; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct commit {scalar_t__ date; struct commit_list* parents; } ;
typedef  int /*<<< orphan*/  rev_name ;

/* Variables and functions */
 int MERGE_TRAVERSAL_WEIGHT ; 
 scalar_t__ cutoff ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct rev_name* FUNC2 (struct commit*) ; 
 scalar_t__ FUNC3 (struct rev_name*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct commit*) ; 
 int /*<<< orphan*/  FUNC5 (struct commit*,struct rev_name*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,size_t*) ; 
 struct rev_name* FUNC7 (int) ; 
 char* FUNC8 (char*,...) ; 

__attribute__((used)) static void FUNC9(struct commit *commit,
		const char *tip_name, timestamp_t taggerdate,
		int generation, int distance, int from_tag,
		int deref)
{
	struct rev_name *name = FUNC2(commit);
	struct commit_list *parents;
	int parent_number = 1;
	char *to_free = NULL;

	FUNC4(commit);

	if (commit->date < cutoff)
		return;

	if (deref) {
		tip_name = to_free = FUNC8("%s^0", tip_name);

		if (generation)
			FUNC0("generation: %d, but deref?", generation);
	}

	if (name == NULL) {
		name = FUNC7(sizeof(rev_name));
		FUNC5(commit, name);
		goto copy_data;
	} else if (FUNC3(name, taggerdate, distance, from_tag)) {
copy_data:
		name->tip_name = tip_name;
		name->taggerdate = taggerdate;
		name->generation = generation;
		name->distance = distance;
		name->from_tag = from_tag;
	} else {
		FUNC1(to_free);
		return;
	}

	for (parents = commit->parents;
			parents;
			parents = parents->next, parent_number++) {
		if (parent_number > 1) {
			size_t len;
			char *new_name;

			FUNC6(tip_name, "^0", &len);
			if (generation > 0)
				new_name = FUNC8("%.*s~%d^%d", (int)len, tip_name,
						   generation, parent_number);
			else
				new_name = FUNC8("%.*s^%d", (int)len, tip_name,
						   parent_number);

			FUNC9(parents->item, new_name, taggerdate, 0,
				 distance + MERGE_TRAVERSAL_WEIGHT,
				 from_tag, 0);
		} else {
			FUNC9(parents->item, tip_name, taggerdate,
				 generation + 1, distance + 1,
				 from_tag, 0);
		}
	}
}