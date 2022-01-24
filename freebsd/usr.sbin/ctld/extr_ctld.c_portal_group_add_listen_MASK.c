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
struct portal_group {int dummy; } ;
struct portal {int p_iser; int /*<<< orphan*/  p_listen; int /*<<< orphan*/  p_ai; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct portal*) ; 
 struct portal* FUNC4 (struct portal_group*) ; 

int
FUNC5(struct portal_group *pg, const char *value, bool iser)
{
	struct portal *portal;

	portal = FUNC4(pg);
	portal->p_listen = FUNC0(value);
	portal->p_iser = iser;

	if (FUNC2(portal->p_listen, "3260", &portal->p_ai)) {
		FUNC1("invalid listen address %s", portal->p_listen);
		FUNC3(portal);
		return (1);
	}

	/*
	 * XXX: getaddrinfo(3) may return multiple addresses; we should turn
	 *	those into multiple portals.
	 */

	return (0);
}