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
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int DEVF_RESET_DETACH ; 
 scalar_t__ DS_ATTACHED ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int
FUNC10(device_t dev, device_t child, int flags)
{
	int error;

	if (dev == NULL || FUNC5(child) != dev)
		return (0);
	if ((flags & DEVF_RESET_DETACH) != 0) {
		error = FUNC6(child) == DS_ATTACHED ?
		    FUNC4(child) : 0;
	} else {
		error = FUNC3(dev, child);
	}
	if (error == 0) {
		if (!FUNC9(child, 1000, false)) {
			error = FUNC1(dev, child);
			if (error == 0)
				FUNC8(child);
			FUNC0(dev, child);
		}
		if ((flags & DEVF_RESET_DETACH) != 0)
			FUNC7(child);
		else
			FUNC2(dev, child);
	}
	return (error);
}