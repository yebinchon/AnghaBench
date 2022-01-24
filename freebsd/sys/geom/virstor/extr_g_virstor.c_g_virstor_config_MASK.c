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
 scalar_t__ G_VIRSTOR_VERSION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,char*,...) ; 
 scalar_t__* FUNC4 (struct gctl_req*,char*,int) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC7 (struct gctl_req*,struct g_class*) ; 
 int /*<<< orphan*/  FUNC8 (struct gctl_req*,struct g_class*) ; 

__attribute__((used)) static void
FUNC9(struct gctl_req *req, struct g_class *cp, char const *verb)
{
	uint32_t *version;

	FUNC0();

	version = FUNC4(req, "version", sizeof(*version));
	if (version == NULL) {
		FUNC3(req, "Failed to get 'version' argument");
		return;
	}
	if (*version != G_VIRSTOR_VERSION) {
		FUNC3(req, "Userland and kernel versions out of sync");
		return;
	}

	FUNC2();
	if (FUNC5(verb, "add") == 0)
		FUNC6(req, cp);
	else if (FUNC5(verb, "stop") == 0 || FUNC5(verb, "destroy") == 0)
		FUNC8(req, cp);
	else if (FUNC5(verb, "remove") == 0)
		FUNC7(req, cp);
	else
		FUNC3(req, "unknown verb: '%s'", verb);
	FUNC1();
}