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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/  const*,int*,void**) ; 
 int FUNC3 (int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC4(const nvlist_t *schema, const nvlist_t *config)
{
	const nvlist_t *schema_param;
	void *cookie;
	const char *name;
	int type, error;

	cookie = NULL;
	while ((name = FUNC2(config, &type, &cookie)) != NULL) {
		if (!FUNC0(schema, name))
			return (EINVAL);

		schema_param = FUNC1(schema, name);

		error = FUNC3(schema_param, name,
		    config);

		if (error != 0)
			return (error);
	}

	return (0);
}