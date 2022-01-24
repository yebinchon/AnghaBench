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
struct g_provider {int /*<<< orphan*/  mediasize; } ;
struct g_class {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  G_LABEL_DIR ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*,struct g_class*,struct g_provider*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct g_provider* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*,...) ; 
 char* FUNC5 (struct gctl_req*,char*) ; 
 int* FUNC6 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct gctl_req *req, struct g_class *mp)
{
	struct g_provider *pp;
	const char *name;
	int *nargs;

	FUNC3();

	nargs = FUNC6(req, "nargs", sizeof(*nargs));
	if (nargs == NULL) {
		FUNC4(req, "No '%s' argument", "nargs");
		return;
	}
	if (*nargs != 2) {
		FUNC4(req, "Invalid number of arguments.");
		return;
	}
	/*
	 * arg1 is the name of provider.
	 */
	name = FUNC5(req, "arg1");
	if (name == NULL) {
		FUNC4(req, "No 'arg%d' argument", 1);
		return;
	}
	if (FUNC8(name, "/dev/", FUNC7("/dev/")) == 0)
		name += FUNC7("/dev/");
	pp = FUNC2(name);
	if (pp == NULL) {
		FUNC0(1, "Provider %s is invalid.", name);
		FUNC4(req, "Provider %s is invalid.", name);
		return;
	}
	/*
	 * arg0 is the label.
	 */
	name = FUNC5(req, "arg0");
	if (name == NULL) {
		FUNC4(req, "No 'arg%d' argument", 0);
		return;
	}
	FUNC1(req, mp, pp, name, G_LABEL_DIR, pp->mediasize);
}