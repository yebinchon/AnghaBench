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
 int /*<<< orphan*/  REQUIRED_SCHEMA_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/  const*,int*,void**) ; 

__attribute__((used)) static void
FUNC5(const nvlist_t *device, const nvlist_t *device_schema,
    const char *subsystem_name, const char *config_name)
{
	const nvlist_t *subsystem, *schema, *config;
	const char *name;
	void *cookie;
	int type;

	subsystem = FUNC3(device, subsystem_name);
	schema = FUNC3(device_schema, subsystem_name);

	cookie = NULL;
	while ((name = FUNC4(schema, &type, &cookie)) != NULL) {
		config = FUNC3(schema, name);

		if (FUNC0(config, REQUIRED_SCHEMA_NAME, false)) {
			if (!FUNC2(subsystem, name))
				FUNC1(1,
				    "Required parameter '%s' not found in '%s'",
				    name, config_name);
		}
	}
}