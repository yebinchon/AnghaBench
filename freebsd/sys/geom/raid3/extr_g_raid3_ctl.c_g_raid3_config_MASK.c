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
 scalar_t__ G_RAID3_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct gctl_req*,char*,...) ; 
 scalar_t__* FUNC9 (struct gctl_req*,char*,int) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 

void
FUNC11(struct gctl_req *req, struct g_class *mp, const char *verb)
{
	uint32_t *version;

	FUNC5();

	version = FUNC9(req, "version", sizeof(*version));
	if (version == NULL) {
		FUNC8(req, "No '%s' argument.", "version");
		return;
	}
	if (*version != G_RAID3_VERSION) {
		FUNC8(req, "Userland and kernel parts are out of sync.");
		return;
	}

	FUNC7();
	if (FUNC10(verb, "configure") == 0)
		FUNC0(req, mp);
	else if (FUNC10(verb, "insert") == 0)
		FUNC1(req, mp);
	else if (FUNC10(verb, "rebuild") == 0)
		FUNC2(req, mp);
	else if (FUNC10(verb, "remove") == 0)
		FUNC3(req, mp);
	else if (FUNC10(verb, "stop") == 0)
		FUNC4(req, mp);
	else
		FUNC8(req, "Unknown verb.");
	FUNC6();
}