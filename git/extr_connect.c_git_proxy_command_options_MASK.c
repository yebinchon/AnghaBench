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
 int FUNC0 (char const*) ; 
 int FUNC1 (char const*,char const*,void*) ; 
 scalar_t__ git_proxy_command ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,int) ; 
 char* FUNC6 (char const*,char*) ; 
 scalar_t__ FUNC7 (char const*,int) ; 

__attribute__((used)) static int FUNC8(const char *var, const char *value,
		void *cb)
{
	if (!FUNC3(var, "core.gitproxy")) {
		const char *for_pos;
		int matchlen = -1;
		int hostlen;
		const char *rhost_name = cb;
		int rhost_len = FUNC4(rhost_name);

		if (git_proxy_command)
			return 0;
		if (!value)
			return FUNC0(var);
		/* [core]
		 * ;# matches www.kernel.org as well
		 * gitproxy = netcatter-1 for kernel.org
		 * gitproxy = netcatter-2 for sample.xz
		 * gitproxy = netcatter-default
		 */
		for_pos = FUNC6(value, " for ");
		if (!for_pos)
			/* matches everybody */
			matchlen = FUNC4(value);
		else {
			hostlen = FUNC4(for_pos + 5);
			if (rhost_len < hostlen)
				matchlen = -1;
			else if (!FUNC5(for_pos + 5,
					  rhost_name + rhost_len - hostlen,
					  hostlen) &&
				 ((rhost_len == hostlen) ||
				  rhost_name[rhost_len - hostlen -1] == '.'))
				matchlen = for_pos - value;
			else
				matchlen = -1;
		}
		if (0 <= matchlen) {
			/* core.gitproxy = none for kernel.org */
			if (matchlen == 4 &&
			    !FUNC2(value, "none", 4))
				matchlen = 0;
			git_proxy_command = FUNC7(value, matchlen);
		}
		return 0;
	}

	return FUNC1(var, value, cb);
}