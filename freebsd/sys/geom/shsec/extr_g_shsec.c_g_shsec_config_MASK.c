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
 scalar_t__ G_SHSEC_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*,char*,...) ; 
 scalar_t__* FUNC3 (struct gctl_req*,char*,int) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static void
FUNC5(struct gctl_req *req, struct g_class *mp, const char *verb)
{
	uint32_t *version;

	FUNC1();

	version = FUNC3(req, "version", sizeof(*version));
	if (version == NULL) {
		FUNC2(req, "No '%s' argument.", "version");
		return;
	}
	if (*version != G_SHSEC_VERSION) {
		FUNC2(req, "Userland and kernel parts are out of sync.");
		return;
	}

	if (FUNC4(verb, "stop") == 0) {
		FUNC0(req, mp);
		return;
	}

	FUNC2(req, "Unknown verb.");
}