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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  ce_mode; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 char* SUBMODULE_WITH_GITDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__** active_cache ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  the_index ; 
 char* FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(const char *src, int first,
				   const char **submodule_gitfile)
{
	struct strbuf submodule_dotgit = STRBUF_INIT;
	if (!FUNC0(active_cache[first]->ce_mode))
		FUNC2(FUNC1("Directory %s is in index and no submodule?"), src);
	if (!FUNC3(&the_index))
		FUNC2(FUNC1("Please stage your changes to .gitmodules or stash them to proceed"));
	FUNC5(&submodule_dotgit, "%s/.git", src);
	*submodule_gitfile = FUNC4(submodule_dotgit.buf);
	if (*submodule_gitfile)
		*submodule_gitfile = FUNC7(*submodule_gitfile);
	else
		*submodule_gitfile = SUBMODULE_WITH_GITDIR;
	FUNC6(&submodule_dotgit);
}