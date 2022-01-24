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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  swap_buffer ; 
 int /*<<< orphan*/ * swap_names ; 
 int /*<<< orphan*/  x_swap ; 
 int /*<<< orphan*/  y_swap ; 

void
FUNC3(int *stats)
{
    static char *new = NULL;

    new = FUNC1(new, 0);

    if (swap_names == NULL)
	    return;

    /* format the new line */
    FUNC2(new, stats, swap_names);
    FUNC0(swap_buffer, new, x_swap, y_swap);
}