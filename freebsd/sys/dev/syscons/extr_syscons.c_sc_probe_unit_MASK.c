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
 int ENXIO ; 
 int /*<<< orphan*/  FALSE ; 
 char* SC_DRIVER_NAME ; 
 int /*<<< orphan*/  VTY_SC ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(int unit, int flags)
{
    if (!FUNC3(VTY_SC))
        return ENXIO;
    if (!FUNC2(unit, flags, FALSE)) {
	if (bootverbose)
	    FUNC0("%s%d: no video adapter found.\n", SC_DRIVER_NAME, unit);
	return ENXIO;
    }

    /* syscons will be attached even when there is no keyboard */
    FUNC1(unit, flags, FALSE);

    return 0;
}