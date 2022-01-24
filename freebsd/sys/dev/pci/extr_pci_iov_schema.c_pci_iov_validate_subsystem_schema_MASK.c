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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int EINVAL ; 
 int NV_TYPE_NVLIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/  const*,int*,void**) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC4(const nvlist_t *dev_schema, const char *name)
{
	const nvlist_t *sub_schema, *param_schema;
	const char *param_name;
	void *it;
	int type, error;

	if (!FUNC0(dev_schema, name))
		return (EINVAL);
	sub_schema = FUNC1(dev_schema, name);

	it = NULL;
	while ((param_name = FUNC2(sub_schema, &type, &it)) != NULL) {
		if (type != NV_TYPE_NVLIST)
			return (EINVAL);
		param_schema = FUNC1(sub_schema, param_name);

		error = FUNC3(param_schema);
		if (error != 0)
			return (error);
	}

	return (0);
}