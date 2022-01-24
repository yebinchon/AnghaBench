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
struct gctl_req {int dummy; } ;
struct g_provider {TYPE_1__* geom; } ;
struct g_gsched {int dummy; } ;
struct g_class {int dummy; } ;
struct TYPE_2__ {struct g_class* class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 struct g_gsched* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct g_gsched*) ; 
 struct g_provider* FUNC3 (char const*) ; 
 char* FUNC4 (struct gctl_req*,int) ; 
 scalar_t__ FUNC5 (struct gctl_req*,struct g_class*,struct g_provider*,struct g_gsched*) ; 
 int FUNC6 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct gctl_req*,char*,char const*) ; 
 char* FUNC9 (struct gctl_req*,char*) ; 

__attribute__((used)) static void
FUNC10(struct gctl_req *req, struct g_class *mp)
{
	struct g_provider *pp;
	struct g_gsched *gsp;
	const char *name;
	int i, nargs;

	FUNC7();

	name = FUNC9(req, "algo");
	if (name == NULL) {
		FUNC8(req, "No '%s' argument", "algo");
		return;
	}

	gsp = FUNC1(name);	/* also get a reference */
	if (gsp == NULL) {
		FUNC8(req, "Bad algorithm '%s'", name);
		return;
	}

	nargs = FUNC6(req);

	/*
	 * Run on the arguments, and break on any error.
	 * We look for a device name, but skip the /dev/ prefix if any.
	 */
	for (i = 0; i < nargs; i++) {
		name = FUNC4(req, i);
		if (name == NULL)
			break;
		pp = FUNC3(name);
		if (pp == NULL || pp->geom->class != mp) {
			FUNC0(1, "Provider %s is invalid.", name);
			FUNC8(req, "Provider %s is invalid.", name);
			break;
		}
		if (FUNC5(req, mp, pp, gsp) != 0)
			break;
	}

	FUNC2(gsp);
}