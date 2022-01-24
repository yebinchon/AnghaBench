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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  mibvar ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 char** socktype ; 
 scalar_t__ FUNC3 (char*,char*,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(int type, char **bufp)
{
	char 	*buf;
	size_t	len;
	char mibvar[sizeof "net.local.seqpacket.pcblist"];

	FUNC2(mibvar, sizeof(mibvar), "net.local.%s.pcblist", socktype[type]);

	len = 0;
	if (FUNC3(mibvar, 0, &len, 0, 0) < 0) {
		if (errno != ENOENT)
			FUNC4("sysctl: %s", mibvar);
		return (-1);
	}
	if ((buf = FUNC1(len)) == NULL) {
		FUNC5("malloc %lu bytes", (u_long)len);
		return (-2);
	}
	if (FUNC3(mibvar, buf, &len, 0, 0) < 0) {
		FUNC4("sysctl: %s", mibvar);
		FUNC0(buf);
		return (-2);
	}
	*bufp = buf;
	return (0);
}