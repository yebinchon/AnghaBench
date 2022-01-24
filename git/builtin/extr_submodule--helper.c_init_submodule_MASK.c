#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ type; } ;
struct submodule {char* name; char* url; TYPE_1__ update_strategy; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 unsigned int OPT_QUIET ; 
 scalar_t__ SM_UPDATE_COMMAND ; 
 scalar_t__ SM_UPDATE_UNSPECIFIED ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char const*,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  null_oid ; 
 scalar_t__ FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 struct submodule* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 char* FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  the_repository ; 
 char* FUNC16 (char*) ; 

__attribute__((used)) static void FUNC17(const char *path, const char *prefix,
			   unsigned int flags)
{
	const struct submodule *sub;
	struct strbuf sb = STRBUF_INIT;
	char *upd = NULL, *url = NULL, *displaypath;

	displaypath = FUNC5(path, prefix);

	sub = FUNC14(the_repository, &null_oid, path);

	if (!sub)
		FUNC2(FUNC0("No url found for submodule path '%s' in .gitmodules"),
			displaypath);

	/*
	 * NEEDSWORK: In a multi-working-tree world, this needs to be
	 * set in the per-worktree config.
	 *
	 * Set active flag for the submodule being initialized
	 */
	if (!FUNC8(the_repository, path)) {
		FUNC11(&sb, "submodule.%s.active", sub->name);
		FUNC7(sb.buf, "true");
		FUNC13(&sb);
	}

	/*
	 * Copy url setting when it is not set yet.
	 * To look up the url in .git/config, we must not fall back to
	 * .gitmodules, so look it up directly.
	 */
	FUNC11(&sb, "submodule.%s.url", sub->name);
	if (FUNC6(sb.buf, &url)) {
		if (!sub->url)
			FUNC2(FUNC0("No url found for submodule path '%s' in .gitmodules"),
				displaypath);

		url = FUNC16(sub->url);

		/* Possibly a url relative to parent */
		if (FUNC9(url) ||
		    FUNC10(url)) {
			char *oldurl = url;
			url = FUNC1(oldurl);
			FUNC4(oldurl);
		}

		if (FUNC7(sb.buf, url))
			FUNC2(FUNC0("Failed to register url for submodule path '%s'"),
			    displaypath);
		if (!(flags & OPT_QUIET))
			FUNC3(stderr,
				FUNC0("Submodule '%s' (%s) registered for path '%s'\n"),
				sub->name, url, displaypath);
	}
	FUNC13(&sb);

	/* Copy "update" setting when it is not set yet */
	FUNC11(&sb, "submodule.%s.update", sub->name);
	if (FUNC6(sb.buf, &upd) &&
	    sub->update_strategy.type != SM_UPDATE_UNSPECIFIED) {
		if (sub->update_strategy.type == SM_UPDATE_COMMAND) {
			FUNC3(stderr, FUNC0("warning: command update mode suggested for submodule '%s'\n"),
				sub->name);
			upd = FUNC16("none");
		} else
			upd = FUNC16(FUNC15(&sub->update_strategy));

		if (FUNC7(sb.buf, upd))
			FUNC2(FUNC0("Failed to register update mode for submodule path '%s'"), displaypath);
	}
	FUNC12(&sb);
	FUNC4(displaypath);
	FUNC4(url);
	FUNC4(upd);
}