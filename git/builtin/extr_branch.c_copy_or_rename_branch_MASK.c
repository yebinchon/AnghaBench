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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char*,char const*,...) ; 
 scalar_t__ FUNC12 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 scalar_t__ FUNC14 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC16 (char const*,struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC18(const char *oldname, const char *newname, int copy, int force)
{
	struct strbuf oldref = STRBUF_INIT, newref = STRBUF_INIT, logmsg = STRBUF_INIT;
	struct strbuf oldsection = STRBUF_INIT, newsection = STRBUF_INIT;
	const char *interpreted_oldname = NULL;
	const char *interpreted_newname = NULL;
	int recovery = 0;

	if (!oldname) {
		if (copy)
			FUNC3(FUNC1("cannot copy the current branch while not on any."));
		else
			FUNC3(FUNC1("cannot rename the current branch while not on any."));
	}

	if (FUNC12(&oldref, oldname)) {
		/*
		 * Bad name --- this could be an attempt to rename a
		 * ref that we used to allow to be created by accident.
		 */
		if (FUNC6(oldref.buf))
			recovery = 1;
		else
			FUNC3(FUNC1("Invalid branch name: '%s'"), oldname);
	}

	/*
	 * A command like "git branch -M currentbranch currentbranch" cannot
	 * cause the worktree to become inconsistent with HEAD, so allow it.
	 */
	if (!FUNC14(oldname, newname))
		FUNC15(newname, &newref);
	else
		FUNC16(newname, &newref, force);

	FUNC7(oldref.buf);

	if (!FUNC10(oldref.buf, "refs/heads/", &interpreted_oldname) ||
	    !FUNC10(newref.buf, "refs/heads/", &interpreted_newname)) {
		FUNC0("expected prefix missing for refs");
	}

	if (copy)
		FUNC11(&logmsg, "Branch: copied %s to %s",
			    oldref.buf, newref.buf);
	else
		FUNC11(&logmsg, "Branch: renamed %s to %s",
			    oldref.buf, newref.buf);

	if (!copy && FUNC8(oldref.buf, newref.buf, logmsg.buf))
		FUNC3(FUNC1("Branch rename failed"));
	if (copy && FUNC2(oldref.buf, newref.buf, logmsg.buf))
		FUNC3(FUNC1("Branch copy failed"));

	if (recovery) {
		if (copy)
			FUNC17(FUNC1("Created a copy of a misnamed branch '%s'"),
				interpreted_oldname);
		else
			FUNC17(FUNC1("Renamed a misnamed branch '%s' away"),
				interpreted_oldname);
	}

	if (!copy &&
	    FUNC9(oldref.buf, newref.buf, logmsg.buf))
		FUNC3(FUNC1("Branch renamed to %s, but HEAD is not updated!"), newname);

	FUNC13(&logmsg);

	FUNC11(&oldsection, "branch.%s", interpreted_oldname);
	FUNC13(&oldref);
	FUNC11(&newsection, "branch.%s", interpreted_newname);
	FUNC13(&newref);
	if (!copy && FUNC5(oldsection.buf, newsection.buf) < 0)
		FUNC3(FUNC1("Branch is renamed, but update of config-file failed"));
	if (copy && FUNC14(oldname, newname) && FUNC4(oldsection.buf, newsection.buf) < 0)
		FUNC3(FUNC1("Branch is copied, but update of config-file failed"));
	FUNC13(&oldsection);
	FUNC13(&newsection);
}