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
struct strbuf {char* buf; } ;
struct child_process {char const** argv; int git_cmd; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 struct strbuf STRBUF_INIT ; 
 unsigned int VERIFY_PACK_STAT_ONLY ; 
 unsigned int VERIFY_PACK_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 scalar_t__ FUNC5 (struct strbuf*,char*) ; 

__attribute__((used)) static int FUNC6(const char *path, unsigned int flags)
{
	struct child_process index_pack = CHILD_PROCESS_INIT;
	const char *argv[] = {"index-pack", NULL, NULL, NULL };
	struct strbuf arg = STRBUF_INIT;
	int verbose = flags & VERIFY_PACK_VERBOSE;
	int stat_only = flags & VERIFY_PACK_STAT_ONLY;
	int err;

	if (stat_only)
		argv[1] = "--verify-stat-only";
	else if (verbose)
		argv[1] = "--verify-stat";
	else
		argv[1] = "--verify";

	/*
	 * In addition to "foo.pack" we accept "foo.idx" and "foo";
	 * normalize these forms to "foo.pack" for "index-pack --verify".
	 */
	FUNC3(&arg, path);
	if (FUNC5(&arg, ".idx") ||
	    !FUNC0(arg.buf, ".pack"))
		FUNC3(&arg, ".pack");
	argv[2] = arg.buf;

	index_pack.argv = argv;
	index_pack.git_cmd = 1;

	err = FUNC2(&index_pack);

	if (verbose || stat_only) {
		if (err)
			FUNC1("%s: bad\n", arg.buf);
		else {
			if (!stat_only)
				FUNC1("%s: ok\n", arg.buf);
		}
	}
	FUNC4(&arg);

	return err;
}