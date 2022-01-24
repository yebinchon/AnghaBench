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
typedef  int /*<<< orphan*/  const nvlist_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/  const*,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/  const*,int*,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC6(const nvlist_t *schema, nvlist_t *config)
{
	const nvlist_t *param_schema;
	const char *name;
	void *cookie;
	int type;

	cookie = NULL;
	while ((name = FUNC4(schema, &type, &cookie)) != NULL) {
		param_schema = FUNC3(schema, name);

		if (FUNC0(param_schema, "required", 0)) {
			if (!FUNC2(config, name))
				return (EINVAL);
		}

		if (FUNC2(param_schema, "default") &&
		    !FUNC2(config, name))
			FUNC5(param_schema, name, config);
	}

	return (FUNC1(config));
}