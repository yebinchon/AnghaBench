#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ thread; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lprocstates ; 
 int ltotal ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 int num_procstates ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 int /*<<< orphan*/  procstate_names ; 
 int /*<<< orphan*/  procstates_buffer ; 
 TYPE_1__ ps ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

void
FUNC7(int total, int *brkdn)
{
    int i;

    procstates_buffer = FUNC5(procstates_buffer, 0);

    /* write current number of processes and remember the value */
    FUNC3("%d %s:", total, ps.thread ? "threads" : "processes");
    ltotal = total;

    /* put out enough spaces to get to column 15 */
    i = FUNC0(total);
    while (i++ < (ps.thread ? 6 : 4))
    {
	FUNC4(' ');
    }

    /* format and print the process state summary */
    FUNC6(procstates_buffer, brkdn, procstate_names);
    FUNC1(procstates_buffer, stdout);

    /* save the numbers for next time */
    FUNC2(lprocstates, brkdn, num_procstates * sizeof(int));
}