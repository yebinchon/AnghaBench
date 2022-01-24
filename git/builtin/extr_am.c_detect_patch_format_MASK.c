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
struct strbuf {char const* buf; scalar_t__ len; } ;
typedef  enum patch_format { ____Placeholder_patch_format } patch_format ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PATCH_FORMAT_HG ; 
 int PATCH_FORMAT_MBOX ; 
 int PATCH_FORMAT_STGIT ; 
 int PATCH_FORMAT_STGIT_SERIES ; 
 int PATCH_FORMAT_UNKNOWN ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8(const char **paths)
{
	enum patch_format ret = PATCH_FORMAT_UNKNOWN;
	struct strbuf l1 = STRBUF_INIT;
	struct strbuf l2 = STRBUF_INIT;
	struct strbuf l3 = STRBUF_INIT;
	FILE *fp;

	/*
	 * We default to mbox format if input is from stdin and for directories
	 */
	if (!*paths || !FUNC6(*paths, "-") || FUNC1(*paths))
		return PATCH_FORMAT_MBOX;

	/*
	 * Otherwise, check the first few lines of the first patch, starting
	 * from the first non-blank line, to try to detect its format.
	 */

	fp = FUNC7(*paths, "r");

	while (!FUNC4(&l1, fp)) {
		if (l1.len)
			break;
	}

	if (FUNC3(l1.buf, "From ") || FUNC3(l1.buf, "From: ")) {
		ret = PATCH_FORMAT_MBOX;
		goto done;
	}

	if (FUNC3(l1.buf, "# This series applies on GIT commit")) {
		ret = PATCH_FORMAT_STGIT_SERIES;
		goto done;
	}

	if (!FUNC6(l1.buf, "# HG changeset patch")) {
		ret = PATCH_FORMAT_HG;
		goto done;
	}

	FUNC4(&l2, fp);
	FUNC4(&l3, fp);

	/*
	 * If the second line is empty and the third is a From, Author or Date
	 * entry, this is likely an StGit patch.
	 */
	if (l1.len && !l2.len &&
		(FUNC3(l3.buf, "From:") ||
		 FUNC3(l3.buf, "Author:") ||
		 FUNC3(l3.buf, "Date:"))) {
		ret = PATCH_FORMAT_STGIT;
		goto done;
	}

	if (l1.len && FUNC2(fp)) {
		ret = PATCH_FORMAT_MBOX;
		goto done;
	}

done:
	FUNC0(fp);
	FUNC5(&l1);
	FUNC5(&l2);
	FUNC5(&l3);
	return ret;
}