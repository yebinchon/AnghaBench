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
struct grep_source {int dummy; } ;
struct grep_opt {int /*<<< orphan*/  prefix; scalar_t__ prefix_length; scalar_t__ relative; } ;

/* Variables and functions */
 int /*<<< orphan*/  GREP_SOURCE_FILE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct grep_opt*,struct grep_source*) ; 
 int FUNC1 (struct grep_opt*,struct grep_source*) ; 
 int /*<<< orphan*/  FUNC2 (struct grep_source*) ; 
 int /*<<< orphan*/  FUNC3 (struct grep_source*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*) ; 
 int num_threads ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 

__attribute__((used)) static int FUNC7(struct grep_opt *opt, const char *filename)
{
	struct strbuf buf = STRBUF_INIT;
	struct grep_source gs;

	if (opt->relative && opt->prefix_length)
		FUNC4(filename, opt->prefix, &buf);
	else
		FUNC5(&buf, filename);

	FUNC3(&gs, GREP_SOURCE_FILE, buf.buf, filename, filename);
	FUNC6(&buf);

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