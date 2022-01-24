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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void
FUNC1(const nvlist_t *device, const nvlist_t *schema,
    const char *config_name)
{

	FUNC0(device, schema, DRIVER_CONFIG_NAME, config_name);
	FUNC0(device, schema, IOV_CONFIG_NAME, config_name);
}