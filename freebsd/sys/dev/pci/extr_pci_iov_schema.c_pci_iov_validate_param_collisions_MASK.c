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
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/  const*,int*,void**) ; 

__attribute__((used)) static int
FUNC3(const nvlist_t *dev_schema)
{
	const nvlist_t *iov_schema, *driver_schema;
	const char *name;
	void *it;
	int type;

	driver_schema = FUNC1(dev_schema, DRIVER_CONFIG_NAME);
	iov_schema = FUNC1(dev_schema, IOV_CONFIG_NAME);

	it = NULL;
	while ((name = FUNC2(driver_schema, &type, &it)) != NULL) {
		if (FUNC0(iov_schema, name))
			return (EINVAL);
	}

	return (0);
}