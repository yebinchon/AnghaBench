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
typedef  int /*<<< orphan*/  ximgact_binmisc_entry_t ;
typedef  int /*<<< orphan*/  imgact_binmisc_entry_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  interp_list_sx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(char *name, ximgact_binmisc_entry_t *xbe)
{
	imgact_binmisc_entry_t *ibe;
	int error = 0;

	FUNC2(&interp_list_sx);
	if ((ibe = FUNC0(name)) == NULL) {
		FUNC3(&interp_list_sx);
		return (ENOENT);
	}

	error = FUNC1(xbe, ibe);
	FUNC3(&interp_list_sx);

	return (error);
}