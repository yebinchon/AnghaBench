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
typedef  int /*<<< orphan*/  imgact_binmisc_entry_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  imgact_binmisc_entry ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  interp_list_entry_count ; 
 int /*<<< orphan*/  interp_list_sx ; 
 int /*<<< orphan*/  interpreter_list ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(char *name)
{
	imgact_binmisc_entry_t *ibe;

	FUNC3(&interp_list_sx);
	if ((ibe = FUNC2(name)) == NULL) {
		FUNC4(&interp_list_sx);
		return (ENOENT);
	}
	FUNC0(&interpreter_list, ibe, imgact_binmisc_entry, link);
	interp_list_entry_count--;
	FUNC4(&interp_list_sx);

	FUNC1(ibe);

	return (0);
}