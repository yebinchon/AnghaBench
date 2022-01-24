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
struct portal_group {int /*<<< orphan*/  pg_portals; } ;
struct portal {struct portal_group* p_portal_group; int /*<<< orphan*/  p_targets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct portal*,int /*<<< orphan*/ ) ; 
 struct portal* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  p_next ; 

__attribute__((used)) static struct portal *
FUNC4(struct portal_group *pg)
{
	struct portal *portal;

	portal = FUNC2(1, sizeof(*portal));
	if (portal == NULL)
		FUNC3(1, "calloc");
	FUNC0(&portal->p_targets);
	portal->p_portal_group = pg;
	FUNC1(&pg->pg_portals, portal, p_next);
	return (portal);
}