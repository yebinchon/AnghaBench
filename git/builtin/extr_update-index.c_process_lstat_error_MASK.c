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
 int FUNC0 (char*,char const*,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(const char *path, int err)
{
	if (FUNC1(err))
		return FUNC2(path);
	return FUNC0("lstat(\"%s\"): %s", path, FUNC3(err));
}