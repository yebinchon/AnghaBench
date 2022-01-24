#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef  TYPE_1__ ucl_object_t ;
struct target {struct lun** t_luns; int /*<<< orphan*/  t_name; } ;
struct lun {int dummy; } ;

/* Variables and functions */
 size_t MAX_LUNS ; 
 scalar_t__ UCL_INT ; 
 scalar_t__ UCL_OBJECT ; 
 scalar_t__ UCL_STRING ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  conf ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,...) ; 
 struct lun* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lun* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct lun*,char*) ; 
 TYPE_1__* FUNC5 (TYPE_1__ const*,char*) ; 
 size_t FUNC6 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const*) ; 

__attribute__((used)) static int
FUNC8(struct target *target, const ucl_object_t *obj)
{
	struct lun *lun;
	uint64_t tmp;

	if (obj->type == UCL_INT) {
		char *name;

		tmp = FUNC6(obj);
		if (tmp >= MAX_LUNS) {
			FUNC1("LU number %ju in target \"%s\" is too big",
			    tmp, target->t_name);
			return (1);
		}

		FUNC0(&name, "%d,lun,%ju", target->t_name, tmp);
		lun = FUNC3(conf, name);
		if (lun == NULL)
			return (1);

		FUNC4(lun, name);
		target->t_luns[tmp] = lun;
		return (0);
	}

	if (obj->type == UCL_OBJECT) {
		const ucl_object_t *num = FUNC5(obj, "number");
		const ucl_object_t *name = FUNC5(obj, "name");

		if (num == NULL || num->type != UCL_INT) {
			FUNC1("lun section in target \"%s\" is missing "
			    "\"number\" integer property", target->t_name);
			return (1);
		}
		tmp = FUNC6(num);
		if (tmp >= MAX_LUNS) {
			FUNC1("LU number %ju in target \"%s\" is too big",
			    tmp, target->t_name);
			return (1);
		}

		if (name == NULL || name->type != UCL_STRING) {
			FUNC1("lun section in target \"%s\" is missing "
			    "\"name\" string property", target->t_name);
			return (1);
		}

		lun = FUNC2(conf, FUNC7(name));
		if (lun == NULL)
			return (1);

		target->t_luns[tmp] = lun;
	}

	return (0);
}