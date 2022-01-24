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
struct strbuf {char* buf; int /*<<< orphan*/  len; } ;
struct object_id {int dummy; } ;
struct commit_graft {int nr_parent; struct object_id* parent; struct object_id oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,struct object_id*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 struct commit_graft* FUNC7 (int /*<<< orphan*/ ) ; 

struct commit_graft *FUNC8(struct strbuf *line)
{
	/* The format is just "Commit Parent1 Parent2 ...\n" */
	int i, phase;
	const char *tail = NULL;
	struct commit_graft *graft = NULL;
	struct object_id dummy_oid, *oid;

	FUNC6(line);
	if (!line->len || line->buf[0] == '#')
		return NULL;
	/*
	 * phase 0 verifies line, counts hashes in line and allocates graft
	 * phase 1 fills graft
	 */
	for (phase = 0; phase < 2; phase++) {
		oid = graft ? &graft->oid : &dummy_oid;
		if (FUNC3(line->buf, oid, &tail))
			goto bad_graft_data;
		for (i = 0; *tail != '\0'; i++) {
			oid = graft ? &graft->parent[i] : &dummy_oid;
			if (!FUNC2(*tail++) || FUNC3(tail, oid, &tail))
				goto bad_graft_data;
		}
		if (!graft) {
			graft = FUNC7(FUNC4(sizeof(*graft),
					       FUNC5(sizeof(struct object_id), i)));
			graft->nr_parent = i;
		}
	}
	return graft;

bad_graft_data:
	FUNC1("bad graft data: %s", line->buf);
	FUNC0(!graft);
	return NULL;
}