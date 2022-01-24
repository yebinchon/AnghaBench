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
struct child_process {char const** argv; int use_shell; int in; } ;
struct archiver_args {int /*<<< orphan*/  compression_level; } ;
struct archiver {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct child_process CHILD_PROCESS_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (struct child_process*) ; 
 scalar_t__ FUNC7 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int FUNC11 (struct archiver const*,struct archiver_args*) ; 

__attribute__((used)) static int FUNC12(const struct archiver *ar,
				    struct archiver_args *args)
{
	struct strbuf cmd = STRBUF_INIT;
	struct child_process filter = CHILD_PROCESS_INIT;
	const char *argv[2];
	int r;

	if (!ar->data)
		FUNC0("tar-filter archiver called with no filter defined");

	FUNC9(&cmd, ar->data);
	if (args->compression_level >= 0)
		FUNC8(&cmd, " -%d", args->compression_level);

	argv[0] = cmd.buf;
	argv[1] = NULL;
	filter.argv = argv;
	filter.use_shell = 1;
	filter.in = -1;

	if (FUNC7(&filter) < 0)
		FUNC4(FUNC1("unable to start '%s' filter"), argv[0]);
	FUNC2(1);
	if (FUNC5(filter.in, 1) < 0)
		FUNC4(FUNC1("unable to redirect descriptor"));
	FUNC2(filter.in);

	r = FUNC11(ar, args);

	FUNC2(1);
	if (FUNC6(&filter) != 0)
		FUNC3(FUNC1("'%s' filter reported error"), argv[0]);

	FUNC10(&cmd);
	return r;
}