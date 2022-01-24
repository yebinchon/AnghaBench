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
struct g_class {int dummy; } ;
typedef  int /*<<< orphan*/  param ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 scalar_t__ FUNC1 (struct gctl_req*,struct g_class*,struct g_provider*) ; 
 struct g_provider* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*,...) ; 
 char* FUNC5 (struct gctl_req*,char*) ; 
 int* FUNC6 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct gctl_req *req, struct g_class *mp)
{
	struct g_provider *pp;
	const char *name;
	char param[16];
	int i, *nargs;

	FUNC3();

	nargs = FUNC6(req, "nargs", sizeof(*nargs));
	if (nargs == NULL) {
		FUNC4(req, "No '%s' argument", "nargs");
		return;
	}
	if (*nargs <= 0) {
		FUNC4(req, "Missing device(s).");
		return;
	}
	for (i = 0; i < *nargs; i++) {
		FUNC7(param, sizeof(param), "arg%d", i);
		name = FUNC5(req, param);
		if (name == NULL) {
			FUNC4(req, "No 'arg%d' argument", i);
			return;
		}
		if (FUNC9(name, "/dev/", FUNC8("/dev/")) == 0)
			name += FUNC8("/dev/");
		pp = FUNC2(name);
		if (pp == NULL) {
			FUNC0(1, "Provider %s is invalid.", name);
			FUNC4(req, "Provider %s is invalid.", name);
			return;
		}
		if (FUNC1(req, mp, pp) != 0)
			return;
	}
}