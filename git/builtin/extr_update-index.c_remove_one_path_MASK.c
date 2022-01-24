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
 int /*<<< orphan*/  allow_remove ; 
 int FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const char *path)
{
	if (!allow_remove)
		return FUNC0("%s: does not exist and --remove not passed", path);
	if (FUNC1(path))
		return FUNC0("%s: cannot remove from the index", path);
	return 0;
}