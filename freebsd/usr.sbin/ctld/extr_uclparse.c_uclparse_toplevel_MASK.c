#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ type; } ;
typedef  TYPE_1__ ucl_object_t ;
typedef  int /*<<< orphan*/ * ucl_object_iter_t ;
struct TYPE_14__ {void* conf_timeout; int /*<<< orphan*/  conf_pidfile_path; void* conf_maxproc; void* conf_debug; } ;

/* Variables and functions */
 scalar_t__ UCL_ARRAY ; 
 scalar_t__ UCL_INT ; 
 scalar_t__ UCL_OBJECT ; 
 scalar_t__ UCL_STRING ; 
 TYPE_12__* conf ; 
 int FUNC0 (TYPE_12__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (TYPE_1__ const*,int /*<<< orphan*/ **,int) ; 
 char* FUNC5 (TYPE_1__ const*) ; 
 void* FUNC6 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,TYPE_1__ const*) ; 

__attribute__((used)) static int
FUNC12(const ucl_object_t *top)
{
	ucl_object_iter_t it = NULL, iter = NULL;
	const ucl_object_t *obj = NULL, *child = NULL;
	int err = 0;

	/* Pass 1 - everything except targets */
	while ((obj = FUNC4(top, &it, true))) {
		const char *key = FUNC5(obj);

		if (!FUNC2(key, "debug")) {
			if (obj->type == UCL_INT)
				conf->conf_debug = FUNC6(obj);
			else {
				FUNC1("\"debug\" property value is not integer");
				return (1);
			}
		}

		if (!FUNC2(key, "timeout")) {
			if (obj->type == UCL_INT)
				conf->conf_timeout = FUNC6(obj);
			else {
				FUNC1("\"timeout\" property value is not integer");
				return (1);
			}
		}

		if (!FUNC2(key, "maxproc")) {
			if (obj->type == UCL_INT)
				conf->conf_maxproc = FUNC6(obj);
			else {
				FUNC1("\"maxproc\" property value is not integer");
				return (1);
			}
		}

		if (!FUNC2(key, "pidfile")) {
			if (obj->type == UCL_STRING)
				conf->conf_pidfile_path = FUNC3(
				    FUNC7(obj));
			else {
				FUNC1("\"pidfile\" property value is not string");
				return (1);
			}
		}

		if (!FUNC2(key, "isns-server")) {
			if (obj->type == UCL_ARRAY) {
				iter = NULL;
				while ((child = FUNC4(obj, &iter,
				    true))) {
					if (child->type != UCL_STRING)
						return (1);

					err = FUNC0(conf,
					    FUNC7(child));
					if (err != 0) {
						return (1);
					}
				}
			} else {
				FUNC1("\"isns-server\" property value is "
				    "not an array");
				return (1);
			}
		}

		if (!FUNC2(key, "isns-period")) {
			if (obj->type == UCL_INT)
				conf->conf_timeout = FUNC6(obj);
			else {
				FUNC1("\"isns-period\" property value is not integer");
				return (1);
			}
		}			

		if (!FUNC2(key, "isns-timeout")) {
			if (obj->type == UCL_INT)
				conf->conf_timeout = FUNC6(obj);
			else {
				FUNC1("\"isns-timeout\" property value is not integer");
				return (1);
			}
		}

		if (!FUNC2(key, "auth-group")) {
			if (obj->type == UCL_OBJECT) {
				iter = NULL;
				while ((child = FUNC4(obj, &iter, true))) {
					FUNC8(FUNC5(child), child);
				}
			} else {
				FUNC1("\"auth-group\" section is not an object");
				return (1);
			}
		}

		if (!FUNC2(key, "portal-group")) {
			if (obj->type == UCL_OBJECT) {
				iter = NULL;
				while ((child = FUNC4(obj, &iter, true))) {
					FUNC10(FUNC5(child), child);
				}
			} else {
				FUNC1("\"portal-group\" section is not an object");
				return (1);
			}
		}

		if (!FUNC2(key, "lun")) {
			if (obj->type == UCL_OBJECT) {
				iter = NULL;
				while ((child = FUNC4(obj, &iter, true))) {
					FUNC9(FUNC5(child), child);
				}
			} else {
				FUNC1("\"lun\" section is not an object");
				return (1);
			}
		}
	}

	/* Pass 2 - targets */
	it = NULL;
	while ((obj = FUNC4(top, &it, true))) {
		const char *key = FUNC5(obj);

		if (!FUNC2(key, "target")) {
			if (obj->type == UCL_OBJECT) {
				iter = NULL;
				while ((child = FUNC4(obj, &iter,
				    true))) {
					FUNC11(FUNC5(child),
					    child);
				}
			} else {
				FUNC1("\"target\" section is not an object");
				return (1);
			}
		}
	}

	return (0);
}