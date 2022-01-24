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
 int /*<<< orphan*/  DRIVER_CONFIG_NAME ; 
 int /*<<< orphan*/  IOV_CONFIG_NAME ; 
 int /*<<< orphan*/  NV_FLAG_IGNORE_CASE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static nvlist_t *
FUNC4(nvlist_t *config, const char * device)
{
	nvlist_t *subsystem, *empty_driver, *empty_iov;

	subsystem = FUNC0(config, device, NULL);

	if (subsystem != NULL)
		return (subsystem);

	empty_driver = FUNC2(NV_FLAG_IGNORE_CASE);
	if (empty_driver == NULL)
		FUNC1(1, "Could not allocate config nvlist");

	empty_iov = FUNC2(NV_FLAG_IGNORE_CASE);
	if (empty_iov == NULL)
		FUNC1(1, "Could not allocate config nvlist");

	subsystem = FUNC2(NV_FLAG_IGNORE_CASE);
	if (subsystem == NULL)
		FUNC1(1, "Could not allocate config nvlist");

	FUNC3(subsystem, DRIVER_CONFIG_NAME, empty_driver);
	FUNC3(subsystem, IOV_CONFIG_NAME, empty_iov);

	return (subsystem);
}