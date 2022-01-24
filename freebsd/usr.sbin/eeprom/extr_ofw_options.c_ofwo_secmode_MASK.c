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
struct ofwo_extabent {int /*<<< orphan*/  ex_prop; } ;

/* Variables and functions */
 int EX_DATAERR ; 
 int EX_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,void const*,int,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static int
FUNC6(const struct ofwo_extabent *exent, int fd, const void *buf,
    int buflen, const char *val)
{
	int res;

	if (val) {
		if (FUNC5(val, "full") == 0 || FUNC5(val, "command") == 0) {
			if ((res = FUNC3(fd)) != EX_OK)
				return (res);
			if ((res = FUNC4(fd, buf, buflen, exent->ex_prop,
			    val)) != EX_OK)
				FUNC1(fd, FUNC0(fd),
				    "security-password", "", 1);
			return (res);
		}
		if (FUNC5(val, "none") == 0) {
			FUNC1(fd, FUNC0(fd), "security-password",
			    "", 1);
			return (FUNC4(fd, buf, buflen, exent->ex_prop,
			    val));
		}
		return (EX_DATAERR);
	} else
		FUNC2(exent->ex_prop, (const char *)buf, buflen);
	return (EX_OK);
}