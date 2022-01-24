#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ type; } ;
typedef  TYPE_1__ ucl_object_t ;
typedef  int /*<<< orphan*/ * ucl_object_iter_t ;
struct target {int /*<<< orphan*/  t_name; TYPE_5__* t_auth_group; int /*<<< orphan*/  t_alias; } ;
struct pport {int /*<<< orphan*/  pp_ports; } ;
struct port {int dummy; } ;
struct auth_portal {int dummy; } ;
struct auth_name {int dummy; } ;
struct TYPE_18__ {struct target* ag_target; int /*<<< orphan*/ * ag_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ UCL_ARRAY ; 
 scalar_t__ UCL_OBJECT ; 
 scalar_t__ UCL_STRING ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_5__*,char*) ; 
 struct auth_name* FUNC4 (TYPE_5__*,char*) ; 
 struct auth_portal* FUNC5 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  conf ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,...) ; 
 struct port* FUNC7 (int /*<<< orphan*/ ,struct target*,int,int) ; 
 struct port* FUNC8 (int /*<<< orphan*/ ,struct target*,struct pport*) ; 
 struct pport* FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC10 (char const*,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 struct target* FUNC13 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC14 (struct target*,char*) ; 
 TYPE_1__* FUNC15 (TYPE_1__ const*,int /*<<< orphan*/ **,int) ; 
 char* FUNC16 (TYPE_1__ const*) ; 
 char* FUNC17 (TYPE_1__ const*) ; 
 scalar_t__ FUNC18 (TYPE_5__*,TYPE_1__ const*) ; 
 scalar_t__ FUNC19 (TYPE_5__*,TYPE_1__ const*) ; 
 scalar_t__ FUNC20 (struct target*,TYPE_1__ const*) ; 
 scalar_t__ FUNC21 (struct target*,TYPE_1__ const*) ; 

__attribute__((used)) static int
FUNC22(const char *name, const ucl_object_t *top)
{
	struct target *target;
	ucl_object_iter_t it = NULL, it2 = NULL;
	const ucl_object_t *obj = NULL, *tmp = NULL;
	const char *key;

	target = FUNC13(conf, name);
	if (target == NULL)
		return (1);

	while ((obj = FUNC15(top, &it, true))) {
		key = FUNC16(obj);

		if (!FUNC11(key, "alias")) {
			if (obj->type != UCL_STRING) {
				FUNC6("\"alias\" property of target "
				    "\"%s\" is not a string", target->t_name);
				return (1);
			}

			target->t_alias = FUNC12(FUNC17(obj));
		}

		if (!FUNC11(key, "auth-group")) {
			if (target->t_auth_group != NULL) {
				if (target->t_auth_group->ag_name != NULL)
					FUNC6("auth-group for target \"%s\" "
					    "specified more than once",
					    target->t_name);
				else
					FUNC6("cannot use both auth-group "
					    "and explicit authorisations for "
					    "target \"%s\"", target->t_name);
				return (1);
			}
			target->t_auth_group = FUNC1(conf,
			    FUNC17(obj));
			if (target->t_auth_group == NULL) {
				FUNC6("unknown auth-group \"%s\" for target "
				    "\"%s\"", FUNC17(obj),
				    target->t_name);
				return (1);
			}
		}

		if (!FUNC11(key, "auth-type")) {
			int error;

			if (target->t_auth_group != NULL) {
				if (target->t_auth_group->ag_name != NULL) {
					FUNC6("cannot use both auth-group and "
					    "auth-type for target \"%s\"",
					    target->t_name);
					return (1);
				}
			} else {
				target->t_auth_group = FUNC2(conf, NULL);
				if (target->t_auth_group == NULL)
					return (1);
	
				target->t_auth_group->ag_target = target;
			}
			error = FUNC3(target->t_auth_group,
			    FUNC17(obj));
			if (error != 0)
				return (1);
		}

		if (!FUNC11(key, "chap")) {
			if (FUNC18(target->t_auth_group, obj) != 0)
				return (1);
		}

		if (!FUNC11(key, "chap-mutual")) {
			if (FUNC19(target->t_auth_group, obj) != 0)
				return (1);
		}

		if (!FUNC11(key, "initiator-name")) {
			const struct auth_name *an;

			if (target->t_auth_group != NULL) {
				if (target->t_auth_group->ag_name != NULL) {
					FUNC6("cannot use both auth-group and "
					    "initiator-name for target \"%s\"",
					    target->t_name);
					return (1);
				}
			} else {
				target->t_auth_group = FUNC2(conf, NULL);
				if (target->t_auth_group == NULL)
					return (1);

				target->t_auth_group->ag_target = target;
			}
			an = FUNC4(target->t_auth_group,
			    FUNC17(obj));
			if (an == NULL)
				return (1);
		}

		if (!FUNC11(key, "initiator-portal")) {
			const struct auth_portal *ap;

			if (target->t_auth_group != NULL) {
				if (target->t_auth_group->ag_name != NULL) {
					FUNC6("cannot use both auth-group and "
					    "initiator-portal for target \"%s\"",
					    target->t_name);
					return (1);
				}
			} else {
				target->t_auth_group = FUNC2(conf, NULL);
				if (target->t_auth_group == NULL)
					return (1);

				target->t_auth_group->ag_target = target;
			}
			ap = FUNC5(target->t_auth_group,
			    FUNC17(obj));
			if (ap == NULL)
				return (1);
		}

		if (!FUNC11(key, "portal-group")) {
			if (obj->type == UCL_OBJECT) {
				if (FUNC21(target, obj) != 0)
					return (1);
			}

			if (obj->type == UCL_ARRAY) {
				while ((tmp = FUNC15(obj, &it2,
				    true))) {
					if (FUNC21(target,
					    tmp) != 0)
						return (1);
				}
			}
		}

		if (!FUNC11(key, "port")) {
			struct pport *pp;
			struct port *tp;
			const char *value = FUNC17(obj);
			int ret, i_pp, i_vp = 0;

			ret = FUNC10(value, "ioctl/%d/%d", &i_pp, &i_vp);
			if (ret > 0) {
				tp = FUNC7(conf, target, i_pp, i_vp);
				if (tp == NULL) {
					FUNC6("can't create new ioctl port "
					    "for target \"%s\"", target->t_name);
					return (1);
				}

				return (0);
			}

			pp = FUNC9(conf, value);
			if (pp == NULL) {
				FUNC6("unknown port \"%s\" for target \"%s\"",
				    value, target->t_name);
				return (1);
			}
			if (!FUNC0(&pp->pp_ports)) {
				FUNC6("can't link port \"%s\" to target \"%s\", "
				    "port already linked to some target",
				    value, target->t_name);
				return (1);
			}
			tp = FUNC8(conf, target, pp);
			if (tp == NULL) {
				FUNC6("can't link port \"%s\" to target \"%s\"",
				    value, target->t_name);
				return (1);
			}
		}

		if (!FUNC11(key, "redirect")) {
			if (obj->type != UCL_STRING) {
				FUNC6("\"redirect\" property of target "
				    "\"%s\" is not a string", target->t_name);
				return (1);
			}

			if (FUNC14(target,
			    FUNC17(obj)) != 0)
				return (1);
		}

		if (!FUNC11(key, "lun")) {
			while ((tmp = FUNC15(obj, &it2, true))) {
				if (FUNC20(target, tmp) != 0)
					return (1);
			}
		}
	}

	return (0);
}