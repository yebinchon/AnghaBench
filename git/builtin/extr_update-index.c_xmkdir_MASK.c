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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,int) ; 

__attribute__((used)) static void FUNC4(const char *path)
{
	path = FUNC2(path);
	if (FUNC3(path, 0700))
		FUNC1(FUNC0("failed to create directory %s"), path);
}