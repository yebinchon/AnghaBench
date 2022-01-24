#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ type; } ;
typedef  TYPE_1__ ucl_object_t ;
struct target {int /*<<< orphan*/  t_name; } ;
struct portal_group {int dummy; } ;
struct port {struct auth_group* p_auth_group; } ;
struct auth_group {int dummy; } ;

/* Variables and functions */
 scalar_t__ UCL_STRING ; 
 struct auth_group* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conf ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 struct port* FUNC2 (int /*<<< orphan*/ ,struct target*,struct portal_group*) ; 
 struct portal_group* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (TYPE_1__ const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*) ; 

__attribute__((used)) static int
FUNC6(struct target *target, const ucl_object_t *obj)
{
	struct portal_group *tpg;
	struct auth_group *tag = NULL;
	struct port *tp;
	const ucl_object_t *portal_group, *auth_group;

	portal_group = FUNC4(obj, "name");
	if (!portal_group || portal_group->type != UCL_STRING) {
		FUNC1("portal-group section in target \"%s\" is missing "
		    "\"name\" string key", target->t_name);
		return (1);
	}

	auth_group = FUNC4(obj, "auth-group-name");
	if (auth_group && auth_group->type != UCL_STRING) {
		FUNC1("portal-group section in target \"%s\" is missing "
		    "\"auth-group-name\" string key", target->t_name);
		return (1);
	}


	tpg = FUNC3(conf, FUNC5(portal_group));
	if (tpg == NULL) {
		FUNC1("unknown portal-group \"%s\" for target "
		    "\"%s\"", FUNC5(portal_group), target->t_name);
		return (1);
	}

	if (auth_group) {
		tag = FUNC0(conf, FUNC5(auth_group));
		if (tag == NULL) {
			FUNC1("unknown auth-group \"%s\" for target "
			    "\"%s\"", FUNC5(auth_group),
			    target->t_name);
			return (1);
		}
	}

	tp = FUNC2(conf, target, tpg);
	if (tp == NULL) {
		FUNC1("can't link portal-group \"%s\" to target "
		    "\"%s\"", FUNC5(portal_group), target->t_name);
		return (1);
	}
	tp->p_auth_group = tag;

	return (0);
}