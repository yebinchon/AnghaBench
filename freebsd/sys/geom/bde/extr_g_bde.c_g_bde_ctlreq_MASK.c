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
struct gctl_req {int dummy; } ;
struct g_provider {int dummy; } ;
struct g_geom {int dummy; } ;
struct g_class {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,struct g_class*,struct g_provider*) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*,struct g_class*,struct g_geom*) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*,char*) ; 
 struct g_geom* FUNC3 (struct gctl_req*,struct g_class*,char*) ; 
 struct g_provider* FUNC4 (struct gctl_req*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static void
FUNC6(struct gctl_req *req, struct g_class *mp, char const *verb)
{
	struct g_geom *gp;
	struct g_provider *pp;

	if (!FUNC5(verb, "create geom")) {
		pp = FUNC4(req, "provider");
		if (pp != NULL)
			FUNC0(req, mp, pp);
	} else if (!FUNC5(verb, "destroy geom")) {
		gp = FUNC3(req, mp, "geom");
		if (gp != NULL)
			FUNC1(req, mp, gp);
	} else {
		FUNC2(req, "unknown verb");
	}
}