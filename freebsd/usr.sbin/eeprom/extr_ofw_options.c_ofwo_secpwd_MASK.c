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
 int EX_CONFIG ; 
 int EX_OK ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,char*,void**,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(const struct ofwo_extabent *exent, int fd, const void *buf,
    int buflen, const char *val)
{
	void *pbuf;
	int len, pblen, rv;

	pblen = 0;
	rv = EX_OK;
	pbuf = NULL;
	if (val) {
		len = FUNC1(fd, FUNC2(fd), "security-mode",
		    &pbuf, &pblen, 1);
		if (len <= 0 || FUNC5("none", (char *)pbuf, len) == 0) {
			rv = EX_CONFIG;
			FUNC6("no security mode set.");
		} else if (FUNC5("command", (char *)pbuf, len) == 0 ||
		    FUNC5("full", (char *)pbuf, len) == 0) {
			rv = FUNC4(fd);
		} else {
			rv = EX_CONFIG;
			FUNC6("invalid security mode.");
		}
	} else
		FUNC3(exent->ex_prop, (const char *)buf, buflen);
	if (pbuf != NULL)
		FUNC0(pbuf);
	return (rv);
}