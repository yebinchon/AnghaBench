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
struct conf {int /*<<< orphan*/  conf_auth_groups; } ;
struct auth_group {struct conf* ag_conf; int /*<<< orphan*/  ag_portals; int /*<<< orphan*/  ag_names; int /*<<< orphan*/  ag_auths; int /*<<< orphan*/  ag_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct auth_group*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ag_next ; 
 struct auth_group* FUNC2 (struct conf*,char const*) ; 
 struct auth_group* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 

struct auth_group *
FUNC7(struct conf *conf, const char *name)
{
	struct auth_group *ag;

	if (name != NULL) {
		ag = FUNC2(conf, name);
		if (ag != NULL) {
			FUNC6("duplicated auth-group \"%s\"", name);
			return (NULL);
		}
	}

	ag = FUNC3(1, sizeof(*ag));
	if (ag == NULL)
		FUNC5(1, "calloc");
	if (name != NULL)
		ag->ag_name = FUNC4(name);
	FUNC0(&ag->ag_auths);
	FUNC0(&ag->ag_names);
	FUNC0(&ag->ag_portals);
	ag->ag_conf = conf;
	FUNC1(&conf->conf_auth_groups, ag, ag_next);

	return (ag);
}