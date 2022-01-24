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
 int CHAR_BIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 char* prog ; 
 int slot_map ; 
 char* FUNC3 (char*,char) ; 
 scalar_t__ tmp_dir ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

int
FUNC6(int ac, char **av)
{
    int             rc = -1;
    int             ch;

    char           *p = FUNC3(av[0], '/');
    prog = p ? p + 1 : av[0];

    tmp_dir = FUNC1("TMPDIR") ? FUNC1("TMPDIR") : tmp_dir;

    while ((ch = FUNC2(ac, av, "ans:")) != -1) {
	switch (ch) {
	case 'a':
	    slot_map = ~0;
	    break;
	case 'n':
	    slot_map = 0;
	    break;
	case 's':
	    {
		int             n = FUNC0(optarg);
		if (n < 0 || n >= CHAR_BIT * sizeof slot_map) {
		    FUNC5(0, "Invalid slot number.");
		    FUNC4();
		    goto out;
		}
		if (slot_map == ~0)
		    slot_map = 0;
		slot_map |= 1 << n;
	    }
	    break;
	default:
	    FUNC4();
	    goto out;
	}
    }

    rc = 0;
  out:
    return rc;
}