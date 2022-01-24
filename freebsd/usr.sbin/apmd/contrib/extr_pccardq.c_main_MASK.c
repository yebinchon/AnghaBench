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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,int,char**,char**,char**,int*) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 scalar_t__ FUNC7 (int,char**) ; 
 int slot_map ; 
 char* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int
FUNC10(int ac, char **av)
{
    char           *path = NULL;
    int             so = -1;
    int             nslot;
    int             i;

    if (FUNC7(ac, av) < 0)
	goto out;
    if ((so = FUNC1(&path)) < 0)
	goto out;
    if ((nslot = FUNC5(so)) < 0)
	goto out;
    if (slot_map == 0) {
	FUNC6("%d\n", nslot);
    } else {
	for (i = 0; i < nslot; i++) {
	    if ((slot_map & (1 << i))) {
		char           *manuf;
		char           *version;
		char           *device;
		int             state;

		if (FUNC4(so, i, &manuf, &version, &device,
				  &state) < 0)
		    goto out;
		if (manuf == NULL || version == NULL || device == NULL)
		    goto out;
		FUNC6("%d~%s~%s~%s~%s\n",
		       i, manuf, version, device, FUNC8(state));
		FUNC3(manuf);
		FUNC3(version);
		FUNC3(device);
	    }
	}
    }
  out:
    if (path) {
	FUNC9(path);
	FUNC3(path);
    }
    if (so >= 0)
	FUNC0(so);
    FUNC2(0);
}