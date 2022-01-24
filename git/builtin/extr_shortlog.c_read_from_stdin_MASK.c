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
struct strbuf {int /*<<< orphan*/  buf; scalar_t__ len; } ;
struct shortlog {scalar_t__ committer; } ;

/* Variables and functions */
 scalar_t__ EOF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct shortlog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct shortlog*,struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,char const**) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static void FUNC6(struct shortlog *log)
{
	struct strbuf author = STRBUF_INIT;
	struct strbuf mapped_author = STRBUF_INIT;
	struct strbuf oneline = STRBUF_INIT;
	static const char *author_match[2] = { "Author: ", "author " };
	static const char *committer_match[2] = { "Commit: ", "committer " };
	const char **match;

	match = log->committer ? committer_match : author_match;
	while (FUNC3(&author, stdin) != EOF) {
		const char *v;
		if (!FUNC2(author.buf, match[0], &v) &&
		    !FUNC2(author.buf, match[1], &v))
			continue;
		while (FUNC3(&oneline, stdin) != EOF &&
		       oneline.len)
			; /* discard headers */
		while (FUNC3(&oneline, stdin) != EOF &&
		       !oneline.len)
			; /* discard blanks */

		FUNC5(&mapped_author);
		if (FUNC1(log, &mapped_author, v) < 0)
			continue;

		FUNC0(log, mapped_author.buf, oneline.buf);
	}
	FUNC4(&author);
	FUNC4(&mapped_author);
	FUNC4(&oneline);
}