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
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* filename ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int,char const*) ; 
 int lineno ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC2(const char *msg)
{
	(void) FUNC1(stderr, "%s: %d: error: %s\n",
	    filename, lineno, msg);
	FUNC0(4);
}