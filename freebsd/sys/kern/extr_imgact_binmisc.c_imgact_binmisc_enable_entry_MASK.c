#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ibe_flags; } ;
typedef  TYPE_1__ imgact_binmisc_entry_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  IBF_ENABLED ; 
 TYPE_1__* FUNC0 (char*) ; 
 int /*<<< orphan*/  interp_list_sx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(char *name)
{
	imgact_binmisc_entry_t *ibe;

	FUNC1(&interp_list_sx);
	if ((ibe = FUNC0(name)) == NULL) {
		FUNC2(&interp_list_sx);
		return (ENOENT);
	}

	ibe->ibe_flags |= IBF_ENABLED;
	FUNC2(&interp_list_sx);

	return (0);
}