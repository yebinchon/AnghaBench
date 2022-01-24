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
 char const* DRIVER_CONFIG_NAME ; 
 int EINVAL ; 
 char const* IOV_CONFIG_NAME ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(const nvlist_t *schema, nvlist_t *config,
    const char *schema_device, const char *config_device)
{
	const nvlist_t *device_schema, *iov_schema, *driver_schema;
	nvlist_t *device_config, *iov_config, *driver_config;
	int error;

	device_config = NULL;
	iov_config = NULL;
	driver_config = NULL;

	device_schema = FUNC1(schema, schema_device);
	iov_schema = FUNC1(device_schema, IOV_CONFIG_NAME);
	driver_schema = FUNC1(device_schema, DRIVER_CONFIG_NAME);

	device_config = FUNC0(config, config_device, NULL);
	if (device_config == NULL) {
		error = EINVAL;
		goto out;
	}

	iov_config = FUNC0(device_config, IOV_CONFIG_NAME, NULL);
	if (iov_config == NULL) {
		error = EINVAL;
		goto out;
	}

	driver_config = FUNC0(device_config, DRIVER_CONFIG_NAME,
	    NULL);
	if (driver_config == NULL) {
		error = EINVAL;
		goto out;
	}

	error = FUNC3(iov_schema, iov_config);
	if (error != 0)
		goto out;

	error = FUNC3(driver_schema, driver_config);
	if (error != 0)
		goto out;

	error = FUNC4(iov_schema, iov_config);
	if (error != 0)
		goto out;

	error = FUNC4(driver_schema, driver_config);
	if (error != 0)
		goto out;

out:
	/* Note that these functions handle NULL pointers safely. */
	FUNC2(device_config, IOV_CONFIG_NAME, iov_config);
	FUNC2(device_config, DRIVER_CONFIG_NAME, driver_config);
	FUNC2(config, config_device, device_config);

	return (error);
}