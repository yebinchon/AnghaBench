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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char**) ; 

__attribute__((used)) static void
FUNC2(char *diffprog, char *f1, char *f2)
{

	char *args[] = {diffprog, f1, f2, (char *) 0};
	FUNC1(diffprog, args);

	/* If execv() fails, sdiff's execution will continue below. */
	FUNC0(1, "could not execute diff process");
}