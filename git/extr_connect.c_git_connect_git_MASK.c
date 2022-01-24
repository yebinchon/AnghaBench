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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct child_process {int dummy; } ;
typedef  enum protocol_version { ____Placeholder_protocol_version } protocol_version ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 struct child_process* FUNC2 (int*,char*) ; 
 struct child_process* FUNC3 (int*,char*,int) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*) ; 

__attribute__((used)) static struct child_process *FUNC11(int fd[2], char *hostandport,
					     const char *path, const char *prog,
					     enum protocol_version version,
					     int flags)
{
	struct child_process *conn;
	struct strbuf request = STRBUF_INIT;
	/*
	 * Set up virtual host information based on where we will
	 * connect, unless the user has overridden us in
	 * the environment.
	 */
	char *target_host = FUNC1("GIT_OVERRIDE_VIRTUAL_HOST");
	if (target_host)
		target_host = FUNC10(target_host);
	else
		target_host = FUNC10(hostandport);

	FUNC9("git");

	/*
	 * These underlying connection commands die() if they
	 * cannot connect.
	 */
	if (FUNC4(hostandport))
		conn = FUNC2(fd, hostandport);
	else
		conn = FUNC3(fd, hostandport, flags);
	/*
	 * Separate original protocol components prog and path
	 * from extended host header with a NUL byte.
	 *
	 * Note: Do not add any other headers here!  Doing so
	 * will cause older git-daemon servers to crash.
	 */
	FUNC7(&request,
		    "%s %s%chost=%s%c",
		    prog, path, 0,
		    target_host, 0);

	/* If using a new version put that stuff here after a second null byte */
	if (version > 0) {
		FUNC6(&request, '\0');
		FUNC7(&request, "version=%d%c",
			    version, '\0');
	}

	FUNC5(fd[1], request.buf, request.len);

	FUNC0(target_host);
	FUNC8(&request);
	return conn;
}