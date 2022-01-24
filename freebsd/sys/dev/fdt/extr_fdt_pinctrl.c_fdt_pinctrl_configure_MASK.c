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
typedef  int u_int ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 

int
FUNC6(device_t client, u_int index)
{
	device_t pinctrl;
	phandle_t *configs;
	int i, nconfigs;
	char name[16];

	FUNC5(name, sizeof(name), "pinctrl-%u", index);
	nconfigs = FUNC2(FUNC4(client), name,
	    sizeof(*configs), (void **)&configs);
	if (nconfigs < 0)
		return (ENOENT);
	if (nconfigs == 0)
		return (0); /* Empty property is documented as valid. */
	for (i = 0; i < nconfigs; i++) {
		if ((pinctrl = FUNC1(configs[i])) != NULL)
			FUNC0(pinctrl, configs[i]);
	}
	FUNC3(configs);
	return (0);
}