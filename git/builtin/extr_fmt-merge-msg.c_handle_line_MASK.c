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
struct string_list_item {struct src_data* util; } ;
struct src_data {int head_status; int is_local_branch; int /*<<< orphan*/  generic; int /*<<< orphan*/  r_branch; int /*<<< orphan*/  tag; int /*<<< orphan*/  branch; int /*<<< orphan*/  oid; } ;
struct origin_data {int head_status; int is_local_branch; int /*<<< orphan*/  generic; int /*<<< orphan*/  r_branch; int /*<<< orphan*/  tag; int /*<<< orphan*/  branch; int /*<<< orphan*/  oid; } ;
struct object_id {int dummy; } ;
struct merge_parents {int dummy; } ;
struct TYPE_2__ {unsigned int hexsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct merge_parents*,struct object_id*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC2 (struct src_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct object_id*) ; 
 int /*<<< orphan*/  origins ; 
 scalar_t__ FUNC4 (char*,char*,char const**) ; 
 int /*<<< orphan*/  srcs ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char const*) ; 
 struct string_list_item* FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC8 (char const*) ; 
 char* FUNC9 (char*,char*) ; 
 TYPE_1__* the_hash_algo ; 
 struct string_list_item* FUNC10 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC11 (int,int) ; 
 char* FUNC12 (char const*,int) ; 
 char* FUNC13 (char*,char const*,char*) ; 

__attribute__((used)) static int FUNC14(char *line, struct merge_parents *merge_parents)
{
	int i, len = FUNC8(line);
	struct origin_data *origin_data;
	char *src;
	const char *origin;
	struct src_data *src_data;
	struct string_list_item *item;
	int pulling_head = 0;
	struct object_id oid;
	const unsigned hexsz = the_hash_algo->hexsz;

	if (len < hexsz + 3 || line[hexsz] != '\t')
		return 1;

	if (FUNC5(line + hexsz + 1, "not-for-merge"))
		return 0;

	if (line[hexsz + 1] != '\t')
		return 2;

	i = FUNC1(line, &oid);
	if (i)
		return 3;

	if (!FUNC0(merge_parents, &oid, NULL))
		return 0; /* subsumed by other parents */

	origin_data = FUNC11(1, sizeof(struct origin_data));
	FUNC3(&origin_data->oid, &oid);

	if (line[len - 1] == '\n')
		line[len - 1] = 0;
	line += hexsz + 2;

	/*
	 * At this point, line points at the beginning of comment e.g.
	 * "branch 'frotz' of git://that/repository.git".
	 * Find the repository name and point it with src.
	 */
	src = FUNC9(line, " of ");
	if (src) {
		*src = 0;
		src += 4;
		pulling_head = 0;
	} else {
		src = line;
		pulling_head = 1;
	}

	item = FUNC10(&srcs, src);
	if (!item) {
		item = FUNC7(&srcs, src);
		item->util = FUNC11(1, sizeof(struct src_data));
		FUNC2(item->util);
	}
	src_data = item->util;

	if (pulling_head) {
		origin = src;
		src_data->head_status |= 1;
	} else if (FUNC5(line, "branch ")) {
		origin_data->is_local_branch = 1;
		origin = line + 7;
		FUNC7(&src_data->branch, origin);
		src_data->head_status |= 2;
	} else if (FUNC5(line, "tag ")) {
		origin = line;
		FUNC7(&src_data->tag, origin + 4);
		src_data->head_status |= 2;
	} else if (FUNC4(line, "remote-tracking branch ", &origin)) {
		FUNC7(&src_data->r_branch, origin);
		src_data->head_status |= 2;
	} else {
		origin = src;
		FUNC7(&src_data->generic, line);
		src_data->head_status |= 2;
	}

	if (!FUNC6(".", src) || !FUNC6(src, origin)) {
		int len = FUNC8(origin);
		if (origin[0] == '\'' && origin[len - 1] == '\'')
			origin = FUNC12(origin + 1, len - 2);
	} else
		origin = FUNC13("%s of %s", origin, src);
	if (FUNC6(".", src))
		origin_data->is_local_branch = 0;
	FUNC7(&origins, origin)->util = origin_data;
	return 0;
}