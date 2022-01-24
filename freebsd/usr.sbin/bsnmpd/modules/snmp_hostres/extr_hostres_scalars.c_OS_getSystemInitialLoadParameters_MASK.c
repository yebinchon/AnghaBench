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
typedef  char u_char ;

/* Variables and functions */
 int CTL_KERN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int KERN_BOOTFILE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int SNMP_ERR_GENERR ; 
 int SNMP_ERR_NOERROR ; 
 char* boot_line ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (int*,int,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int
FUNC5(u_char **params)
{

	if (boot_line == NULL) {
		int mib[2] = { CTL_KERN, KERN_BOOTFILE };
		char *buf;
		size_t buf_len = 0;

		/* get the needed buffer len */
		if (FUNC3(mib, 2, NULL, &buf_len, NULL, 0) != 0) {
			FUNC4(LOG_ERR,
			    "sysctl({CTL_KERN,KERN_BOOTFILE}) failed: %m");
			return (SNMP_ERR_GENERR);
		}

		if ((buf = FUNC2(buf_len)) == NULL) {
			FUNC4(LOG_ERR, "malloc failed");
			return (SNMP_ERR_GENERR);
		}
		if (FUNC3(mib, 2, buf, &buf_len, NULL, 0)) {
			FUNC4(LOG_ERR,
			    "sysctl({CTL_KERN,KERN_BOOTFILE}) failed: %m");
			FUNC1(buf);
			return (SNMP_ERR_GENERR);
		}

		boot_line = buf;
		FUNC0("kernel boot file: %s", boot_line);
	}

	*params = boot_line;
	return (SNMP_ERR_NOERROR);
}