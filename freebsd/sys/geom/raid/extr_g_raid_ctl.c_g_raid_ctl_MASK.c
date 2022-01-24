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
 scalar_t__ G_RAID_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*,...) ; 
 scalar_t__* FUNC5 (struct gctl_req*,char*,int) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

void
FUNC7(struct gctl_req *req, struct g_class *mp, const char *verb)
{
	uint32_t *version;

	FUNC3();

	version = FUNC5(req, "version", sizeof(*version));
	if (version == NULL) {
		FUNC4(req, "No '%s' argument.", "version");
		return;
	}
	if (*version != G_RAID_VERSION) {
		FUNC4(req, "Userland and kernel parts are out of sync.");
		return;
	}

	if (FUNC6(verb, "label") == 0)
		FUNC0(req, mp);
	else if (FUNC6(verb, "stop") == 0)
		FUNC2(req, mp);
	else
		FUNC1(req, mp);
}