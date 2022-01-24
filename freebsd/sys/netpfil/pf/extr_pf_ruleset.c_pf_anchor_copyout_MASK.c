#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pfioc_rule {char* anchor_call; } ;
struct pf_ruleset {TYPE_1__* anchor; } ;
struct pf_rule {int anchor_relative; scalar_t__ anchor_wildcard; TYPE_2__* anchor; } ;
struct TYPE_4__ {char* path; } ;
struct TYPE_3__ {char* path; } ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,scalar_t__) ; 
 char* FUNC7 (char*,char) ; 

int
FUNC8(const struct pf_ruleset *rs, const struct pf_rule *r,
    struct pfioc_rule *pr)
{
	pr->anchor_call[0] = 0;
	if (r->anchor == NULL)
		return (0);
	if (!r->anchor_relative) {
		FUNC4(pr->anchor_call, "/", sizeof(pr->anchor_call));
		FUNC3(pr->anchor_call, r->anchor->path,
		    sizeof(pr->anchor_call));
	} else {
		char	*a, *p;
		int	 i;

		a = (char *)FUNC2(MAXPATHLEN);
		if (a == NULL)
			return (1);
		if (rs->anchor == NULL)
			a[0] = 0;
		else
			FUNC4(a, rs->anchor->path, MAXPATHLEN);
		for (i = 1; i < r->anchor_relative; ++i) {
			if ((p = FUNC7(a, '/')) == NULL)
				p = a;
			*p = 0;
			FUNC3(pr->anchor_call, "../",
			    sizeof(pr->anchor_call));
		}
		if (FUNC6(a, r->anchor->path, FUNC5(a))) {
			FUNC0("pf_anchor_copyout: '%s' '%s'\n", a,
			    r->anchor->path);
			FUNC1(a);
			return (1);
		}
		if (FUNC5(r->anchor->path) > FUNC5(a))
			FUNC3(pr->anchor_call, r->anchor->path + (a[0] ?
			    FUNC5(a) + 1 : 0), sizeof(pr->anchor_call));
		FUNC1(a);
	}
	if (r->anchor_wildcard)
		FUNC3(pr->anchor_call, pr->anchor_call[0] ? "/*" : "*",
		    sizeof(pr->anchor_call));
	return (0);
}