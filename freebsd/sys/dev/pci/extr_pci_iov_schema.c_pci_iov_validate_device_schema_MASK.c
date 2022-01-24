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
 int EINVAL ; 
 int /*<<< orphan*/  IOV_CONFIG_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(const nvlist_t *schema, const char *name)
{
	const nvlist_t *dev_schema;
	int error;

	if (!FUNC0(schema, name))
		return (EINVAL);
	dev_schema = FUNC1(schema, name);

	error = FUNC4(dev_schema, IOV_CONFIG_NAME);
	if (error != 0)
		return (error);

	error = FUNC4(dev_schema,
	    DRIVER_CONFIG_NAME);
	if (error != 0)
		return (error);

	error = FUNC2(dev_schema);
	if (error != 0)
		return (error);

	return (FUNC3(dev_schema));
}