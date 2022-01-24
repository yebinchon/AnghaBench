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
 int /*<<< orphan*/ * childpids ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int maxprocs ; 

__attribute__((used)) static void
FUNC3(void)
{
	int i;

	if ((childpids = FUNC2(maxprocs * sizeof(*childpids))) == NULL)
		FUNC1(1, "malloc failed");

	for (i = 0; i < maxprocs; i++)
		FUNC0(i);
}