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
 char* arc_buffer ; 
 int /*<<< orphan*/ * arc_names ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lastline ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC2 (char*,int*,int /*<<< orphan*/ *) ; 

void
FUNC3(int *stats)
{
    arc_buffer = FUNC1(arc_buffer, 0);

    if (arc_names == NULL)
	return;

    FUNC0("\nARC: ", stdout);
    lastline++;

    /* format and print the memory summary */
    FUNC2(arc_buffer, stats, arc_names);
    FUNC0(arc_buffer, stdout);
}