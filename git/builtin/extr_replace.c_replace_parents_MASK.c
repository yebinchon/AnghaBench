#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char* buf; int /*<<< orphan*/  len; } ;
struct object_id {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;
struct TYPE_4__ {unsigned int hexsz; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (char const*,struct object_id*) ; 
 struct commit* FUNC3 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,int,int,char const*,int /*<<< orphan*/ ) ; 
 TYPE_2__* the_hash_algo ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC9(struct strbuf *buf, int argc, const char **argv)
{
	struct strbuf new_parents = STRBUF_INIT;
	const char *parent_start, *parent_end;
	int i;
	const unsigned hexsz = the_hash_algo->hexsz;

	/* find existing parents */
	parent_start = buf->buf;
	parent_start += hexsz + 6; /* "tree " + "hex sha1" + "\n" */
	parent_end = parent_start;

	while (FUNC5(parent_end, "parent "))
		parent_end += hexsz + 8; /* "parent " + "hex sha1" + "\n" */

	/* prepare new parents */
	for (i = 0; i < argc; i++) {
		struct object_id oid;
		struct commit *commit;

		if (FUNC2(argv[i], &oid) < 0) {
			FUNC7(&new_parents);
			return FUNC1(FUNC0("not a valid object name: '%s'"),
				     argv[i]);
		}
		commit = FUNC3(the_repository, &oid);
		if (!commit) {
			FUNC7(&new_parents);
			return FUNC1(FUNC0("could not parse %s as a commit"), argv[i]);
		}
		FUNC6(&new_parents, "parent %s\n", FUNC4(&commit->object.oid));
	}

	/* replace existing parents with new ones */
	FUNC8(buf, parent_start - buf->buf, parent_end - parent_start,
		      new_parents.buf, new_parents.len);

	FUNC7(&new_parents);
	return 0;
}