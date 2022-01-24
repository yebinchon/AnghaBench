#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct portal {struct portal* p_listen; int /*<<< orphan*/ * p_ai; TYPE_1__* p_portal_group; } ;
struct TYPE_2__ {int /*<<< orphan*/  pg_portals; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct portal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct portal*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p_next ; 

__attribute__((used)) static void
FUNC3(struct portal *portal)
{

	FUNC0(&portal->p_portal_group->pg_portals, portal, p_next);
	if (portal->p_ai != NULL)
		FUNC2(portal->p_ai);
	FUNC1(portal->p_listen);
	FUNC1(portal);
}