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
struct printer {int printer; int /*<<< orphan*/  daemon_user; } ;
struct passwd {int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_name; } ;
typedef  int pid_t ;

/* Variables and functions */
#define  DOABORT 129 
#define  DORETURN 128 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  daemon_defgid ; 
 int /*<<< orphan*/ * daemon_uname ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 struct passwd* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static int
FUNC9(const struct printer *pp, int action)
{
	pid_t forkpid;
	int i, fail;
	struct passwd *pwd;

	forkpid = -1;
	if (daemon_uname == NULL) {
		pwd = FUNC2(pp->daemon_user);
		if (pwd == NULL) {
			FUNC8(LOG_ERR, "%s: Can't lookup default daemon uid (%ld) in password file",
			    pp->printer, pp->daemon_user);
			goto error_ret;
		}
		daemon_uname = FUNC7(pwd->pw_name);
		daemon_defgid = pwd->pw_gid;
	}

	for (i = 0; i < 20; i++) {
		forkpid = FUNC1();
		if (forkpid < 0) {
			FUNC6((unsigned)(i*i));
			continue;
		}
		/*
		 * Child should run as daemon instead of root
		 */
		if (forkpid == 0) {
			errno = 0;
			fail = FUNC3(daemon_uname, daemon_defgid);
			if (fail) {
				FUNC8(LOG_ERR, "%s: initgroups(%s,%u): %m",
				    pp->printer, daemon_uname, daemon_defgid);
				break;
			}
			fail = FUNC4(daemon_defgid);
			if (fail) {
				FUNC8(LOG_ERR, "%s: setgid(%u): %m",
				    pp->printer, daemon_defgid);
				break;
			}
			fail = FUNC5(pp->daemon_user);
			if (fail) {
				FUNC8(LOG_ERR, "%s: setuid(%ld): %m",
				    pp->printer, pp->daemon_user);
				break;
			}
		}
		return (forkpid);
	}

	/*
	 * An error occurred.  If the error is in the child process, then
	 * this routine MUST always exit().  DORETURN only effects how
	 * errors should be handled in the parent process.
	 */
error_ret:
	if (forkpid == 0) {
		FUNC8(LOG_ERR, "%s: dofork(): aborting child process...",
		    pp->printer);
		FUNC0(1);
	}
	FUNC8(LOG_ERR, "%s: dofork(): failure in fork", pp->printer);

	FUNC6(1);		/* throttle errors, as a safety measure */
	switch (action) {
	case DORETURN:
		return (-1);
	default:
		FUNC8(LOG_ERR, "bad action (%d) to dofork", action);
		/* FALLTHROUGH */
	case DOABORT:
		FUNC0(1);
	}
	/*NOTREACHED*/
}