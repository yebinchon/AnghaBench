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
typedef  scalar_t__ uint32_t ;
struct gctl_req {int dummy; } ;
struct g_class {int dummy; } ;

/* Variables and functions */
 scalar_t__ G_MIRROR_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC5 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC6 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC7 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC8 (struct gctl_req*,struct g_class*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct gctl_req*,char*,...) ; 
 scalar_t__* FUNC13 (struct gctl_req*,char*,int) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 

void
FUNC15(struct gctl_req *req, struct g_class *mp, const char *verb)
{
	uint32_t *version;

	FUNC9();

	version = FUNC13(req, "version", sizeof(*version));
	if (version == NULL) {
		FUNC12(req, "No '%s' argument.", "version");
		return;
	}
	if (*version != G_MIRROR_VERSION) {
		FUNC12(req, "Userland and kernel parts are out of sync.");
		return;
	}

	FUNC11();
	if (FUNC14(verb, "configure") == 0)
		FUNC0(req, mp);
	else if (FUNC14(verb, "create") == 0)
		FUNC1(req, mp);
	else if (FUNC14(verb, "rebuild") == 0)
		FUNC5(req, mp);
	else if (FUNC14(verb, "insert") == 0)
		FUNC4(req, mp);
	else if (FUNC14(verb, "remove") == 0)
		FUNC6(req, mp);
	else if (FUNC14(verb, "resize") == 0)
		FUNC7(req, mp);
	else if (FUNC14(verb, "deactivate") == 0)
		FUNC2(req, mp);
	else if (FUNC14(verb, "forget") == 0)
		FUNC3(req, mp);
	else if (FUNC14(verb, "stop") == 0)
		FUNC8(req, mp, 0);
	else if (FUNC14(verb, "destroy") == 0)
		FUNC8(req, mp, 1);
	else
		FUNC12(req, "Unknown verb.");
	FUNC10();
}