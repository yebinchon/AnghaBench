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
 int EINVAL ; 
 int /*<<< orphan*/  MFI_PD_STATE_FAILED ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static int
FUNC2(int ac, char **av)
{

	if (ac != 2) {
		FUNC1("fail: %s", ac > 2 ? "extra arguments" :
		    "drive required");
		return (EINVAL);
	}

	return (FUNC0(av[1], MFI_PD_STATE_FAILED));
}