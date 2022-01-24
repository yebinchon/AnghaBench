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
 scalar_t__ G_STRIPE_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,char*,...) ; 
 scalar_t__* FUNC4 (struct gctl_req*,char*,int) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static void
FUNC6(struct gctl_req *req, struct g_class *mp, const char *verb)
{
	uint32_t *version;

	FUNC2();

	version = FUNC4(req, "version", sizeof(*version));
	if (version == NULL) {
		FUNC3(req, "No '%s' argument.", "version");
		return;
	}
	if (*version != G_STRIPE_VERSION) {
		FUNC3(req, "Userland and kernel parts are out of sync.");
		return;
	}

	if (FUNC5(verb, "create") == 0) {
		FUNC0(req, mp);
		return;
	} else if (FUNC5(verb, "destroy") == 0 ||
	    FUNC5(verb, "stop") == 0) {
		FUNC1(req, mp);
		return;
	}

	FUNC3(req, "Unknown verb.");
}