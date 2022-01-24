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
struct strbuf {int dummy; } ;
struct remote {int dummy; } ;
struct ref {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ deleterefs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ref* FUNC2 () ; 
 char* FUNC3 (char const*,struct remote*,struct ref*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 struct remote* FUNC5 (char const*) ; 
 int /*<<< orphan*/  rs ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,char const*) ; 
 char* FUNC7 (struct strbuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*,char) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 

__attribute__((used)) static void FUNC10(const char **refs, int nr, const char *repo)
{
	struct remote *remote = NULL;
	struct ref *local_refs = NULL;
	int i;

	for (i = 0; i < nr; i++) {
		const char *ref = refs[i];
		if (!FUNC9("tag", ref)) {
			struct strbuf tagref = STRBUF_INIT;
			if (nr <= ++i)
				FUNC1(FUNC0("tag shorthand without <tag>"));
			ref = refs[i];
			if (deleterefs)
				FUNC6(&tagref, ":refs/tags/%s", ref);
			else
				FUNC6(&tagref, "refs/tags/%s", ref);
			ref = FUNC7(&tagref, NULL);
		} else if (deleterefs) {
			struct strbuf delref = STRBUF_INIT;
			if (FUNC8(ref, ':'))
				FUNC1(FUNC0("--delete only accepts plain target ref names"));
			FUNC6(&delref, ":%s", ref);
			ref = FUNC7(&delref, NULL);
		} else if (!FUNC8(ref, ':')) {
			if (!remote) {
				/* lazily grab remote and local_refs */
				remote = FUNC5(repo);
				local_refs = FUNC2();
			}
			ref = FUNC3(ref, remote, local_refs);
		}
		FUNC4(&rs, ref);
	}
}