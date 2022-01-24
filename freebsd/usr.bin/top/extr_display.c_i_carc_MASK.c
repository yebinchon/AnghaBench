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
 char* carc_buffer ; 
 int /*<<< orphan*/ * carc_names ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lastline ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC2 (char*,int*,int /*<<< orphan*/ *) ; 

void
FUNC3(int *stats)
{
    carc_buffer = FUNC1(carc_buffer, 0);

    if (carc_names == NULL)
	return;

    FUNC0("\n     ", stdout);
    lastline++;

    /* format and print the memory summary */
    FUNC2(carc_buffer, stats, carc_names);
    FUNC0(carc_buffer, stdout);
}