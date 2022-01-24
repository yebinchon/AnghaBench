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
 scalar_t__ G_SCHED_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*,struct g_class*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*,...) ; 
 scalar_t__* FUNC5 (struct gctl_req*,char*,int) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static void
FUNC7(struct gctl_req *req, struct g_class *mp, const char *verb)
{
	uint32_t *version;

	FUNC3();

	version = FUNC5(req, "version", sizeof(*version));
	if (version == NULL) {
		FUNC4(req, "No '%s' argument.", "version");
		return;
	}

	if (*version != G_SCHED_VERSION) {
		FUNC4(req, "Userland and kernel parts are "
		    "out of sync.");
		return;
	}

	if (FUNC6(verb, "create") == 0) {
		FUNC1(req, mp, 0);
		return;
	} else if (FUNC6(verb, "insert") == 0) {
		FUNC1(req, mp, 1);
		return;
	} else if (FUNC6(verb, "configure") == 0) {
		FUNC0(req, mp);
		return;
	} else if (FUNC6(verb, "destroy") == 0) {
		FUNC2(req, mp);
		return;
	}

	FUNC4(req, "Unknown verb.");
}