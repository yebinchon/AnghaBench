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
 scalar_t__ FUNC1 (char*,size_t*,char*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(const char *cmd)
{
	if (cmd && !FUNC3(cmd, "sh")) {
		static int ret = -1;
		char *p;

		if (ret >= 0)
			return ret;

		p = FUNC2(cmd, 0);
		if (!p)
			ret = 0;
		else {
			size_t len = FUNC4(p);

			ret = FUNC1(p, &len, "sh.exe") &&
				FUNC1(p, &len, "bin") &&
				FUNC1(p, &len, "usr");
			FUNC0(p);
		}
		return ret;
	}
	return 0;
}