#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ type; } ;
typedef  TYPE_1__ ucl_object_t ;
typedef  int /*<<< orphan*/ * ucl_object_iter_t ;
struct lun {int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_options; } ;

/* Variables and functions */
 scalar_t__ UCL_INT ; 
 scalar_t__ UCL_OBJECT ; 
 scalar_t__ UCL_STRING ; 
 int /*<<< orphan*/  conf ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct lun* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct lun*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lun*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lun*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lun*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lun*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lun*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 TYPE_1__* FUNC10 (TYPE_1__ const*,int /*<<< orphan*/ **,int) ; 
 char* FUNC11 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__ const*) ; 

__attribute__((used)) static int
FUNC15(const char *name, const ucl_object_t *top)
{
	struct lun *lun;
	ucl_object_iter_t it = NULL, child_it = NULL;
	const ucl_object_t *obj = NULL, *child = NULL;
	const char *key;

	lun = FUNC1(conf, name);
	if (lun == NULL)
		return (1);

	while ((obj = FUNC10(top, &it, true))) {
		key = FUNC11(obj);

		if (!FUNC9(key, "backend")) {
			if (obj->type != UCL_STRING) {
				FUNC0("\"backend\" property of lun "
				    "\"%s\" is not a string",
				    lun->l_name);
				return (1);
			}

			FUNC2(lun, FUNC13(obj));
		}

		if (!FUNC9(key, "blocksize")) {
			if (obj->type != UCL_INT) {
				FUNC0("\"blocksize\" property of lun "
				    "\"%s\" is not an integer", lun->l_name);
				return (1);
			}

			FUNC3(lun, FUNC12(obj));
		}

		if (!FUNC9(key, "device-id")) {
			if (obj->type != UCL_STRING) {
				FUNC0("\"device-id\" property of lun "
				    "\"%s\" is not an integer", lun->l_name);
				return (1);
			}

			FUNC4(lun, FUNC13(obj));
		}

		if (!FUNC9(key, "options")) {
			if (obj->type != UCL_OBJECT) {
				FUNC0("\"options\" property of lun "
				    "\"%s\" is not an object", lun->l_name);
				return (1);
			}

			while ((child = FUNC10(obj, &child_it,
			    true))) {
				FUNC8(&lun->l_options,
				    FUNC11(child),
				    FUNC14(child));
			}
		}

		if (!FUNC9(key, "path")) {
			if (obj->type != UCL_STRING) {
				FUNC0("\"path\" property of lun "
				    "\"%s\" is not a string", lun->l_name);
				return (1);
			}

			FUNC5(lun, FUNC13(obj));
		}

		if (!FUNC9(key, "serial")) {
			if (obj->type != UCL_STRING) {
				FUNC0("\"serial\" property of lun "
				    "\"%s\" is not a string", lun->l_name);
				return (1);
			}

			FUNC6(lun, FUNC13(obj));
		}

		if (!FUNC9(key, "size")) {
			if (obj->type != UCL_INT) {
				FUNC0("\"size\" property of lun "
				    "\"%s\" is not an integer", lun->l_name);
				return (1);
			}

			FUNC7(lun, FUNC12(obj));
		}
	}

	return (0);
}