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
struct child_process {char const** argv; int err; int stdout_to_stderr; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (struct child_process*) ; 
 scalar_t__ FUNC5 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(void)
{
	struct strbuf buffer = STRBUF_INIT;
	struct child_process ec_process = CHILD_PROCESS_INIT;
	const char *argv_ec[] = { "emacsclient", "--version", NULL };
	int version;

	/* emacsclient prints its version number on stderr */
	ec_process.argv = argv_ec;
	ec_process.err = -1;
	ec_process.stdout_to_stderr = 1;
	if (FUNC5(&ec_process))
		return FUNC3(FUNC0("Failed to start emacsclient."));

	FUNC7(&buffer, ec_process.err, 20);
	FUNC2(ec_process.err);

	/*
	 * Don't bother checking return value, because "emacsclient --version"
	 * seems to always exits with code 1.
	 */
	FUNC4(&ec_process);

	if (!FUNC6(buffer.buf, "emacsclient")) {
		FUNC8(&buffer);
		return FUNC3(FUNC0("Failed to parse emacsclient version."));
	}

	FUNC9(&buffer, 0, FUNC10("emacsclient"));
	version = FUNC1(buffer.buf);

	if (version < 22) {
		FUNC8(&buffer);
		return FUNC3(FUNC0("emacsclient version '%d' too old (< 22)."),
			version);
	}

	FUNC8(&buffer);
	return 0;
}