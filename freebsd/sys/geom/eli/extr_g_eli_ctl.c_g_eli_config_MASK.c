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
 scalar_t__ G_ELI_VERSION ; 
 scalar_t__ G_ELI_VERSION_05 ; 
 scalar_t__ G_ELI_VERSION_06 ; 
 scalar_t__ G_ELI_VERSION_07 ; 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC5 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC6 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC7 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC8 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct gctl_req*,char*,...) ; 
 scalar_t__* FUNC11 (struct gctl_req*,char*,int) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 

void
FUNC13(struct gctl_req *req, struct g_class *mp, const char *verb)
{
	uint32_t *version;

	FUNC9();

	version = FUNC11(req, "version", sizeof(*version));
	if (version == NULL) {
		FUNC10(req, "No '%s' argument.", "version");
		return;
	}
	while (*version != G_ELI_VERSION) {
		if (G_ELI_VERSION == G_ELI_VERSION_06 &&
		    *version == G_ELI_VERSION_05) {
			/* Compatible. */
			break;
		}
		if (G_ELI_VERSION == G_ELI_VERSION_07 &&
		    (*version == G_ELI_VERSION_05 ||
		     *version == G_ELI_VERSION_06)) {
			/* Compatible. */
			break;
		}
		FUNC10(req, "Userland and kernel parts are out of sync.");
		return;
	}

	if (FUNC12(verb, "attach") == 0)
		FUNC0(req, mp);
	else if (FUNC12(verb, "detach") == 0 || FUNC12(verb, "stop") == 0)
		FUNC3(req, mp);
	else if (FUNC12(verb, "onetime") == 0)
		FUNC5(req, mp);
	else if (FUNC12(verb, "configure") == 0)
		FUNC1(req, mp);
	else if (FUNC12(verb, "setkey") == 0)
		FUNC7(req, mp);
	else if (FUNC12(verb, "delkey") == 0)
		FUNC2(req, mp);
	else if (FUNC12(verb, "suspend") == 0)
		FUNC8(req, mp);
	else if (FUNC12(verb, "resume") == 0)
		FUNC6(req, mp);
	else if (FUNC12(verb, "kill") == 0)
		FUNC4(req, mp);
	else
		FUNC10(req, "Unknown verb.");
}