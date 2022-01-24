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
struct strbuf {char* buf; } ;
struct object_id {int dummy; } ;
typedef  int /*<<< orphan*/  git_hash_ctx ;
struct TYPE_2__ {int /*<<< orphan*/  (* update_fn ) (int /*<<< orphan*/ *,char*,int) ;int /*<<< orphan*/  (* init_fn ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 (struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const**) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC8 (struct strbuf*,int /*<<< orphan*/ ,char) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static int FUNC12(struct object_id *next_oid, struct object_id *result,
			   struct strbuf *line_buf, int stable)
{
	int patchlen = 0, found_next = 0;
	int before = -1, after = -1;
	git_hash_ctx ctx;

	the_hash_algo->init_fn(&ctx);
	FUNC3(result);

	while (FUNC8(line_buf, stdin, '\n') != EOF) {
		char *line = line_buf->buf;
		const char *p = line;
		int len;

		if (!FUNC6(line, "diff-tree ", &p) &&
		    !FUNC6(line, "commit ", &p) &&
		    !FUNC6(line, "From ", &p) &&
		    FUNC7(line, "\\ ") && 12 < FUNC9(line))
			continue;

		if (!FUNC1(p, next_oid)) {
			found_next = 1;
			break;
		}

		/* Ignore commit comments */
		if (!patchlen && !FUNC7(line, "diff "))
			continue;

		/* Parsing diff header?  */
		if (before == -1) {
			if (FUNC7(line, "index "))
				continue;
			else if (FUNC7(line, "--- "))
				before = after = 1;
			else if (!FUNC2(line[0]))
				break;
		}

		/* Looking for a valid hunk header?  */
		if (before == 0 && after == 0) {
			if (FUNC7(line, "@@ -")) {
				/* Parse next hunk, but ignore line numbers.  */
				FUNC5(line, &before, &after);
				continue;
			}

			/* Split at the end of the patch.  */
			if (!FUNC7(line, "diff "))
				break;

			/* Else we're parsing another header.  */
			if (stable)
				FUNC0(result, &ctx);
			before = after = -1;
		}

		/* If we get here, we're inside a hunk.  */
		if (line[0] == '-' || line[0] == ' ')
			before--;
		if (line[0] == '+' || line[0] == ' ')
			after--;

		/* Compute the sha without whitespace */
		len = FUNC4(line);
		patchlen += len;
		the_hash_algo->update_fn(&ctx, line, len);
	}

	if (!found_next)
		FUNC3(next_oid);

	FUNC0(result, &ctx);

	return patchlen;
}