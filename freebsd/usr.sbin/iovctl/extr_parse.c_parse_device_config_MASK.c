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
typedef  int /*<<< orphan*/  ucl_object_t ;
typedef  int /*<<< orphan*/ * ucl_object_iter_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 char const* DRIVER_CONFIG_NAME ; 
 char const* IOV_CONFIG_NAME ; 
 int /*<<< orphan*/  NV_FLAG_IGNORE_CASE ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/ **,int) ; 
 char* FUNC9 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC10(const ucl_object_t *top, nvlist_t *config,
    const char *subsystem, const nvlist_t *schema)
{
	ucl_object_iter_t it;
	const ucl_object_t *obj;
	nvlist_t *subsystem_config, *driver_config, *iov_config;
	const nvlist_t *driver_schema, *iov_schema;
	const char *key;

	if (FUNC4(config, subsystem))
		FUNC2(1, "Multiple definitions of '%s' in config file",
		    subsystem);

	driver_schema = FUNC6(schema, DRIVER_CONFIG_NAME);
	iov_schema = FUNC6(schema, IOV_CONFIG_NAME);

	driver_config = FUNC3(NV_FLAG_IGNORE_CASE);
	if (driver_config == NULL)
		FUNC1(1, "Could not allocate config nvlist");

	iov_config = FUNC3(NV_FLAG_IGNORE_CASE);
	if (iov_config == NULL)
		FUNC1(1, "Could not allocate config nvlist");

	subsystem_config = FUNC3(NV_FLAG_IGNORE_CASE);
	if (subsystem_config == NULL)
		FUNC1(1, "Could not allocate config nvlist");

	it = NULL;
	while ((obj = FUNC8(top, &it, true)) != NULL) {
		key = FUNC9(obj);

		if (FUNC5(iov_schema, key))
			FUNC0(key, obj, iov_config,
			    FUNC6(iov_schema, key));
		else if (FUNC5(driver_schema, key))
			FUNC0(key, obj, driver_config,
			    FUNC6(driver_schema, key));
		else
			FUNC2(1, "%s: Invalid config key '%s'", subsystem, key);
	}

	FUNC7(subsystem_config, DRIVER_CONFIG_NAME, driver_config);
	FUNC7(subsystem_config, IOV_CONFIG_NAME, iov_config);
	FUNC7(config, subsystem, subsystem_config);
}