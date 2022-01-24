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
 int /*<<< orphan*/  arc_buffer ; 
 int /*<<< orphan*/ * arc_names ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  x_arc ; 
 int /*<<< orphan*/  y_arc ; 

void
FUNC3(int *stats)
{
    static char *new = NULL;

    new = FUNC1(new, 0);

    if (arc_names == NULL)
	return;

    /* format the new line */
    FUNC2(new, stats, arc_names);
    FUNC0(arc_buffer, new, x_arc, y_arc);
}