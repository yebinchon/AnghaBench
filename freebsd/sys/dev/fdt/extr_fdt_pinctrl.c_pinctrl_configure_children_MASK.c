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
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  name ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,char*,int,void**) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,char**,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*) ; 

__attribute__((used)) static int
FUNC11(device_t pinctrl, phandle_t parent)
{
	phandle_t node, *configs;
	int i, nconfigs;

	FUNC7();

	for (node = FUNC1(parent); node != 0; node = FUNC5(node)) {
		if (!FUNC9(node))
			continue;
		FUNC11(pinctrl, node);
		nconfigs = FUNC3(node, "pinctrl-0",
		    sizeof(*configs), (void **)&configs);
		if (nconfigs <= 0)
			continue;
		if (bootverbose) {
			char name[32];
			FUNC4(node, "name", &name, sizeof(name));
			FUNC10("Processing %d pin-config node(s) in pinctrl-0 for %s\n",
			    nconfigs, name);
		}
		for (i = 0; i < nconfigs; i++) {
			if (FUNC2(configs[i]) == pinctrl)
				FUNC0(pinctrl, configs[i]);
		}
		FUNC6(configs);
	}
	FUNC8();
	return (0);
}