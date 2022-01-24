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
struct portal_group {scalar_t__ pg_tag; struct conf* pg_conf; int /*<<< orphan*/  pg_ports; int /*<<< orphan*/  pg_portals; int /*<<< orphan*/  pg_options; int /*<<< orphan*/  pg_name; } ;
struct conf {int /*<<< orphan*/  conf_portal_groups; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct portal_group*,int /*<<< orphan*/ ) ; 
 struct portal_group* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  pg_next ; 
 struct portal_group* FUNC6 (struct conf*,char const*) ; 

struct portal_group *
FUNC7(struct conf *conf, const char *name)
{
	struct portal_group *pg;

	pg = FUNC6(conf, name);
	if (pg != NULL) {
		FUNC5("duplicated portal-group \"%s\"", name);
		return (NULL);
	}

	pg = FUNC2(1, sizeof(*pg));
	if (pg == NULL)
		FUNC4(1, "calloc");
	pg->pg_name = FUNC3(name);
	FUNC0(&pg->pg_options);
	FUNC0(&pg->pg_portals);
	FUNC0(&pg->pg_ports);
	pg->pg_conf = conf;
	pg->pg_tag = 0;		/* Assigned later in conf_apply(). */
	FUNC1(&conf->conf_portal_groups, pg, pg_next);

	return (pg);
}