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
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(char *actual, char *possible)
{
    if (actual == NULL || possible == NULL)
	return (TRUE);
    return (FUNC1(actual, possible, FUNC0(possible)) == 0);
}