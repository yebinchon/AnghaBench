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
struct child_process {int no_stdin; int no_stdout; int no_stderr; int /*<<< orphan*/  args; int /*<<< orphan*/  env_array; scalar_t__ use_shell; } ;
typedef  enum ssh_variant { ____Placeholder_ssh_variant } ssh_variant ;
typedef  enum protocol_version { ____Placeholder_protocol_version } protocol_version ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int VARIANT_AUTO ; 
 int VARIANT_SIMPLE ; 
 int VARIANT_SSH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC4 () ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char const*,int,int) ; 
 scalar_t__ FUNC8 (struct child_process*) ; 

__attribute__((used)) static void FUNC9(struct child_process *conn, const char *ssh_host,
			  const char *port, enum protocol_version version,
			  int flags)
{
	const char *ssh;
	enum ssh_variant variant;

	if (FUNC6(ssh_host))
		FUNC3(FUNC0("strange hostname '%s' blocked"), ssh_host);

	ssh = FUNC4();
	if (ssh) {
		variant = FUNC2(ssh, 1);
	} else {
		/*
		 * GIT_SSH is the no-shell version of
		 * GIT_SSH_COMMAND (and must remain so for
		 * historical compatibility).
		 */
		conn->use_shell = 0;

		ssh = FUNC5("GIT_SSH");
		if (!ssh)
			ssh = "ssh";
		variant = FUNC2(ssh, 0);
	}

	if (variant == VARIANT_AUTO) {
		struct child_process detect = CHILD_PROCESS_INIT;

		detect.use_shell = conn->use_shell;
		detect.no_stdin = detect.no_stdout = detect.no_stderr = 1;

		FUNC1(&detect.args, ssh);
		FUNC1(&detect.args, "-G");
		FUNC7(&detect.args, &detect.env_array,
				 VARIANT_SSH, port, version, flags);
		FUNC1(&detect.args, ssh_host);

		variant = FUNC8(&detect) ? VARIANT_SIMPLE : VARIANT_SSH;
	}

	FUNC1(&conn->args, ssh);
	FUNC7(&conn->args, &conn->env_array, variant, port, version, flags);
	FUNC1(&conn->args, ssh_host);
}