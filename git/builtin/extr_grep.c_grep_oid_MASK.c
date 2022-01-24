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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
struct grep_source {int dummy; } ;
struct grep_opt {int /*<<< orphan*/  prefix; scalar_t__ prefix_length; scalar_t__ relative; } ;

/* Variables and functions */
 int /*<<< orphan*/  GREP_SOURCE_OID ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct grep_opt*,struct grep_source*) ; 
 int FUNC1 (struct grep_opt*,struct grep_source*) ; 
 int /*<<< orphan*/  FUNC2 (struct grep_source*) ; 
 int /*<<< orphan*/  FUNC3 (struct grep_source*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,struct object_id const*) ; 
 int num_threads ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 

__attribute__((used)) static int FUNC8(struct grep_opt *opt, const struct object_id *oid,
		     const char *filename, int tree_name_len,
		     const char *path)
{
	struct strbuf pathbuf = STRBUF_INIT;
	struct grep_source gs;

	if (opt->relative && opt->prefix_length) {
		FUNC4(filename + tree_name_len, opt->prefix, &pathbuf);
		FUNC6(&pathbuf, 0, filename, tree_name_len);
	} else {
		FUNC5(&pathbuf, filename);
	}

	FUNC3(&gs, GREP_SOURCE_OID, pathbuf.buf, path, oid);
	FUNC7(&pathbuf);

	if (num_threads > 1) {
		/*
		 * add_work() copies gs and thus assumes ownership of
		 * its fields, so do not call grep_source_clear()
		 */
		FUNC0(opt, &gs);
		return 0;
	} else {
		int hit;

		hit = FUNC1(opt, &gs);

		FUNC2(&gs);
		return hit;
	}
}