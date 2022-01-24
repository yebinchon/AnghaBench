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
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int FUNC2 (char const*,char const*,void*) ; 
 scalar_t__ tar_umask ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(const char *var, const char *value, void *cb)
{
	if (!FUNC1(var, "tar.umask")) {
		if (value && !FUNC1(value, "user")) {
			tar_umask = FUNC3(0);
			FUNC3(tar_umask);
		} else {
			tar_umask = FUNC0(var, value);
		}
		return 0;
	}

	return FUNC2(var, value, cb);
}