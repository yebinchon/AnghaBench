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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lastline ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC2 (char*,int*,int /*<<< orphan*/ *) ; 
 char* swap_buffer ; 
 int /*<<< orphan*/ * swap_names ; 

void
FUNC3(int *stats)
{
    swap_buffer = FUNC1(swap_buffer, 0);

    if (swap_names == NULL)
	    return;

    FUNC0("\nSwap: ", stdout);
    lastline++;

    /* format and print the swap summary */
    FUNC2(swap_buffer, stats, swap_names);
    FUNC0(swap_buffer, stdout);
}