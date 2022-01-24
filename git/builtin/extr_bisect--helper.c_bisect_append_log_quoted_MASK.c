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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const**) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static int FUNC6(const char **argv)
{
	int retval = 0;
	FILE *fp = FUNC1(FUNC3(), "a");
	struct strbuf orig_args = STRBUF_INIT;

	if (!fp)
		return -1;

	if (FUNC2(fp, "git bisect start") < 1) {
		retval = -1;
		goto finish;
	}

	FUNC4(&orig_args, argv);
	if (FUNC2(fp, "%s\n", orig_args.buf) < 1)
		retval = -1;

finish:
	FUNC0(fp);
	FUNC5(&orig_args);
	return retval;
}