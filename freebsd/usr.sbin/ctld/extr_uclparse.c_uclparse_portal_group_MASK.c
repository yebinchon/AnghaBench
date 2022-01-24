#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ type; } ;
typedef  TYPE_1__ ucl_object_t ;
typedef  int /*<<< orphan*/ * ucl_object_iter_t ;
struct portal_group {int /*<<< orphan*/  pg_options; int /*<<< orphan*/  pg_name; int /*<<< orphan*/ * pg_discovery_auth_group; } ;
struct TYPE_13__ {int conf_default_pg_defined; } ;

/* Variables and functions */
 scalar_t__ UCL_ARRAY ; 
 scalar_t__ UCL_OBJECT ; 
 scalar_t__ UCL_STRING ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 TYPE_8__* conf ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct portal_group*,int /*<<< orphan*/ ,int) ; 
 struct portal_group* FUNC4 (TYPE_8__*,char const*) ; 
 struct portal_group* FUNC5 (TYPE_8__*,char const*) ; 
 scalar_t__ FUNC6 (struct portal_group*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct portal_group*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 TYPE_1__* FUNC9 (TYPE_1__ const*,int /*<<< orphan*/ **,int) ; 
 char* FUNC10 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__ const*) ; 

__attribute__((used)) static int
FUNC13(const char *name, const ucl_object_t *top)
{
	struct portal_group *portal_group;
	ucl_object_iter_t it = NULL, it2 = NULL;
	const ucl_object_t *obj = NULL, *tmp = NULL;
	const char *key;

	if (FUNC8(name, "default") == 0 &&
	    conf->conf_default_pg_defined == false) {
		portal_group = FUNC4(conf, name);
		conf->conf_default_pg_defined = true;
	} else {
		portal_group = FUNC5(conf, name);
	}

	if (portal_group == NULL)
		return (1);

	while ((obj = FUNC9(top, &it, true))) {
		key = FUNC10(obj);

		if (!FUNC8(key, "discovery-auth-group")) {
			portal_group->pg_discovery_auth_group =
			    FUNC0(conf, FUNC11(obj));
			if (portal_group->pg_discovery_auth_group == NULL) {
				FUNC1("unknown discovery-auth-group \"%s\" "
				    "for portal-group \"%s\"",
				    FUNC11(obj),
				    portal_group->pg_name);
				return (1);
			}
		}

		if (!FUNC8(key, "discovery-filter")) {
			if (obj->type != UCL_STRING) {
				FUNC1("\"discovery-filter\" property of "
				    "portal-group \"%s\" is not a string",
				    portal_group->pg_name);
				return (1);
			}

			if (FUNC6(portal_group,
			    FUNC11(obj)) != 0)
				return (1);
		}

		if (!FUNC8(key, "listen")) {
			if (obj->type == UCL_STRING) {
				if (FUNC3(portal_group,
				    FUNC11(obj), false) != 0)
					return (1);
			} else if (obj->type == UCL_ARRAY) {
				while ((tmp = FUNC9(obj, &it2,
				    true))) {
					if (FUNC3(
					    portal_group, 
					    FUNC11(tmp),
					    false) != 0)
						return (1);
				}
			} else {
				FUNC1("\"listen\" property of "
				    "portal-group \"%s\" is not a string",
				    portal_group->pg_name);
				return (1);
			}
		}

		if (!FUNC8(key, "listen-iser")) {
			if (obj->type == UCL_STRING) {
				if (FUNC3(portal_group,
				    FUNC11(obj), true) != 0)
					return (1);
			} else if (obj->type == UCL_ARRAY) {
				while ((tmp = FUNC9(obj, &it2,
				    true))) {
					if (FUNC3(
					    portal_group,
					    FUNC11(tmp),
					    true) != 0)
						return (1);
				}
			} else {
				FUNC1("\"listen\" property of "
				    "portal-group \"%s\" is not a string",
				    portal_group->pg_name);
				return (1);
			}
		}

		if (!FUNC8(key, "redirect")) {
			if (obj->type != UCL_STRING) {
				FUNC1("\"listen\" property of "
				    "portal-group \"%s\" is not a string",
				    portal_group->pg_name);
				return (1);
			}

			if (FUNC7(portal_group,
			    FUNC11(obj)) != 0)
				return (1);
		}

		if (!FUNC8(key, "options")) {
			if (obj->type != UCL_OBJECT) {
				FUNC1("\"options\" property of portal group "
				    "\"%s\" is not an object", portal_group->pg_name);
				return (1);
			}

			while ((tmp = FUNC9(obj, &it2,
			    true))) {
				FUNC2(&portal_group->pg_options,
				    FUNC10(tmp),
				    FUNC12(tmp));
			}
		}
	}	

	return (0);
}