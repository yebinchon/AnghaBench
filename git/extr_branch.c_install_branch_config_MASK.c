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

/* Variables and functions */
 int BRANCH_CONFIG_VERBOSE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,char const*,...) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char const*) ; 
 char* tracking_advice ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*) ; 

int FUNC12(int flag, const char *local, const char *origin, const char *remote)
{
	const char *shortname = NULL;
	struct strbuf key = STRBUF_INIT;
	int rebasing = FUNC5(origin);

	if (FUNC6(remote, "refs/heads/", &shortname)
	    && !FUNC10(local, shortname)
	    && !origin) {
		FUNC11(FUNC0("Not setting branch %s as its own upstream."),
			local);
		return 0;
	}

	FUNC7(&key, "branch.%s.remote", local);
	if (FUNC3(key.buf, origin ? origin : ".") < 0)
		goto out_err;

	FUNC9(&key);
	FUNC7(&key, "branch.%s.merge", local);
	if (FUNC3(key.buf, remote) < 0)
		goto out_err;

	if (rebasing) {
		FUNC9(&key);
		FUNC7(&key, "branch.%s.rebase", local);
		if (FUNC3(key.buf, "true") < 0)
			goto out_err;
	}
	FUNC8(&key);

	if (flag & BRANCH_CONFIG_VERBOSE) {
		if (shortname) {
			if (origin)
				FUNC4(rebasing ?
					  FUNC0("Branch '%s' set up to track remote branch '%s' from '%s' by rebasing.") :
					  FUNC0("Branch '%s' set up to track remote branch '%s' from '%s'."),
					  local, shortname, origin);
			else
				FUNC4(rebasing ?
					  FUNC0("Branch '%s' set up to track local branch '%s' by rebasing.") :
					  FUNC0("Branch '%s' set up to track local branch '%s'."),
					  local, shortname);
		} else {
			if (origin)
				FUNC4(rebasing ?
					  FUNC0("Branch '%s' set up to track remote ref '%s' by rebasing.") :
					  FUNC0("Branch '%s' set up to track remote ref '%s'."),
					  local, remote);
			else
				FUNC4(rebasing ?
					  FUNC0("Branch '%s' set up to track local ref '%s' by rebasing.") :
					  FUNC0("Branch '%s' set up to track local ref '%s'."),
					  local, remote);
		}
	}

	return 0;

out_err:
	FUNC8(&key);
	FUNC2(FUNC0("Unable to write upstream branch configuration"));

	FUNC1(FUNC0(tracking_advice),
	       origin ? origin : "",
	       origin ? "/" : "",
	       shortname ? shortname : remote);

	return -1;
}