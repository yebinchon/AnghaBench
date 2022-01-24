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
 size_t errno ; 
 scalar_t__ opt_silent ; 
 char const** sys_errlist ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*) ; 

__attribute__((used)) static int
FUNC1(const char *path, const char *msg)
{
    if (opt_silent)
	return 0;
    FUNC0("%s: %s", path, msg ? msg : sys_errlist[errno]);
    return 2;
}