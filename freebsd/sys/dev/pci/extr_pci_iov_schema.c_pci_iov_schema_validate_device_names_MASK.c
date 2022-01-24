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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/  const*,int*,void**) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC4(const nvlist_t *config, uint16_t num_vfs)
{
	const nvlist_t *device;
	void *cookie;
	const char *name;
	int type, error;

	cookie = NULL;
	while ((name = FUNC1(config, &type, &cookie)) != NULL) {
		error = FUNC2(name, num_vfs);
		if (error != 0)
			return (error);

		/*
		 * Note that as this is a valid PF/VF node, we know that
		 * pci_iov_schema_validate_device() has already checked that
		 * the PF/VF node is an nvlist.
		 */
		device = FUNC0(config, name);
		error = FUNC3(device);
		if (error != 0)
			return (error);
	}

	return (0);
}