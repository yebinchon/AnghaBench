#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ type; } ;
typedef  TYPE_1__ ucl_object_t ;
typedef  int /*<<< orphan*/ * ucl_object_iter_t ;
struct auth_portal {int dummy; } ;
struct auth_name {int dummy; } ;
struct auth_group {int dummy; } ;
struct TYPE_13__ {int conf_default_ag_defined; } ;

/* Variables and functions */
 scalar_t__ UCL_ARRAY ; 
 struct auth_group* FUNC0 (TYPE_9__*,char const*) ; 
 struct auth_group* FUNC1 (TYPE_9__*,char const*) ; 
 int FUNC2 (struct auth_group*,char const*) ; 
 struct auth_name* FUNC3 (struct auth_group*,char const*) ; 
 struct auth_portal* FUNC4 (struct auth_group*,char const*) ; 
 TYPE_9__* conf ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 TYPE_1__* FUNC7 (TYPE_1__ const*,int /*<<< orphan*/ **,int) ; 
 char* FUNC8 (TYPE_1__ const*) ; 
 char* FUNC9 (TYPE_1__ const*) ; 
 scalar_t__ FUNC10 (struct auth_group*,TYPE_1__ const*) ; 
 scalar_t__ FUNC11 (struct auth_group*,TYPE_1__ const*) ; 

__attribute__((used)) static int
FUNC12(const char *name, const ucl_object_t *top)
{
	struct auth_group *auth_group;
	const struct auth_name *an;
	const struct auth_portal *ap;
	ucl_object_iter_t it = NULL, it2 = NULL;
	const ucl_object_t *obj = NULL, *tmp = NULL;
	const char *key;
	int err;

	if (!FUNC6(name, "default") &&
	    conf->conf_default_ag_defined == false) {
		auth_group = FUNC0(conf, name);
		conf->conf_default_ag_defined = true;
	} else {
		auth_group = FUNC1(conf, name);
	}

	if (auth_group == NULL)
		return (1);

	while ((obj = FUNC7(top, &it, true))) {
		key = FUNC8(obj);

		if (!FUNC6(key, "auth-type")) {
			const char *value = FUNC9(obj);

			err = FUNC2(auth_group, value);
			if (err)
				return (1);
		}

		if (!FUNC6(key, "chap")) {
			if (obj->type != UCL_ARRAY) {
				FUNC5("\"chap\" property of "
				    "auth-group \"%s\" is not an array",
				    name);
				return (1);
			}

			it2 = NULL;
			while ((tmp = FUNC7(obj, &it2, true))) {
				if (FUNC10(auth_group, tmp) != 0)
					return (1);
			}
		}

		if (!FUNC6(key, "chap-mutual")) {
			if (obj->type != UCL_ARRAY) {
				FUNC5("\"chap-mutual\" property of "
				    "auth-group \"%s\" is not an array",
				    name);
				return (1);
			}

			it2 = NULL;
			while ((tmp = FUNC7(obj, &it2, true))) {
				if (FUNC11(auth_group, tmp) != 0)
					return (1);
			}
		}

		if (!FUNC6(key, "initiator-name")) {
			if (obj->type != UCL_ARRAY) {
				FUNC5("\"initiator-name\" property of "
				    "auth-group \"%s\" is not an array",
				    name);
				return (1);
			}

			it2 = NULL;
			while ((tmp = FUNC7(obj, &it2, true))) {
				const char *value = FUNC9(tmp);
				
				an = FUNC3(auth_group, value);
				if (an == NULL)
					return (1);
			}
		}

		if (!FUNC6(key, "initiator-portal")) {
			if (obj->type != UCL_ARRAY) {
				FUNC5("\"initiator-portal\" property of "
				    "auth-group \"%s\" is not an array",
				    name);
				return (1);
			}

			it2 = NULL;
			while ((tmp = FUNC7(obj, &it2, true))) {
				const char *value = FUNC9(tmp);

				ap = FUNC4(auth_group, value);
				if (ap == NULL)
					return (1);
			}
		}
	}

	return (0);
}