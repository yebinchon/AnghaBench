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
struct pf_ruleset {TYPE_1__* anchor; } ;
struct pf_rule {int anchor_relative; int anchor_wildcard; TYPE_1__* anchor; } ;
struct TYPE_2__ {char const* path; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAXPATHLEN ; 
 struct pf_ruleset* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char) ; 

int
FUNC8(struct pf_rule *r, const struct pf_ruleset *s,
    const char *name)
{
	char			*p, *path;
	struct pf_ruleset	*ruleset;

	r->anchor = NULL;
	r->anchor_relative = 0;
	r->anchor_wildcard = 0;
	if (!name[0])
		return (0);
	path = (char *)FUNC3(MAXPATHLEN);
	if (path == NULL)
		return (1);
	if (name[0] == '/')
		FUNC6(path, name + 1, MAXPATHLEN);
	else {
		/* relative path */
		r->anchor_relative = 1;
		if (s->anchor == NULL || !s->anchor->path[0])
			path[0] = 0;
		else
			FUNC6(path, s->anchor->path, MAXPATHLEN);
		while (name[0] == '.' && name[1] == '.' && name[2] == '/') {
			if (!path[0]) {
				FUNC1("pf_anchor_setup: .. beyond root\n");
				FUNC2(path);
				return (1);
			}
			if ((p = FUNC7(path, '/')) != NULL)
				*p = 0;
			else
				path[0] = 0;
			r->anchor_relative++;
			name += 3;
		}
		if (path[0])
			FUNC5(path, "/", MAXPATHLEN);
		FUNC5(path, name, MAXPATHLEN);
	}
	if ((p = FUNC7(path, '/')) != NULL && !FUNC4(p, "/*")) {
		r->anchor_wildcard = 1;
		*p = 0;
	}
	ruleset = FUNC0(path);
	FUNC2(path);
	if (ruleset == NULL || ruleset->anchor == NULL) {
		FUNC1("pf_anchor_setup: ruleset\n");
		return (1);
	}
	r->anchor = ruleset->anchor;
	r->anchor->refcnt++;
	return (0);
}