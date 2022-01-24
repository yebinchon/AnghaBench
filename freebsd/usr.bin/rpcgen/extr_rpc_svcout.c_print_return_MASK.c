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
 scalar_t__ exitnow ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  fout ; 
 scalar_t__ mtflag ; 
 scalar_t__ timerflag ; 

__attribute__((used)) static void
FUNC1(const char *space)
{
	if (exitnow)
		FUNC0(fout, "%sexit(0);\n", space);
	else {
		if (timerflag) {
			if (mtflag)
				FUNC0(fout, "%spthread_mutex_lock(&_svcstate_lock);\n", space);
				FUNC0(fout, "%s_rpcsvcstate = _SERVED;\n", space);
			if (mtflag)
				FUNC0(fout, "%spthread_mutex_unlock(&_svcstate_lock);\n", space);
		}
		FUNC0(fout, "%sreturn;\n", space);
	}
}