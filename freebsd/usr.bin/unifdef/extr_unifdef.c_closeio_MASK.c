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
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/ * input ; 
 int /*<<< orphan*/ * output ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ symdepth ; 
 int /*<<< orphan*/  zerosyms ; 

__attribute__((used)) static void
FUNC4(void)
{
	/* Tidy up after findsym(). */
	if (symdepth && !zerosyms)
		FUNC3("\n");
	if (output != NULL && (FUNC2(output) || FUNC1(output) == EOF))
			FUNC0(2, "%s: can't write to output", filename);
	FUNC1(input);
}