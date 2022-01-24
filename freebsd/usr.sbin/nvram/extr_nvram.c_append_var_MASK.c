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
typedef  char const uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*,char const*,char const*) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static int
FUNC2(uint8_t *buf, int len, const char *var_name, const char *var_value)
{
	int i, append_len;

	while (len > 0) {
		i = FUNC1(buf) + 1;
		if (i == 1)
			break;
		len -= i;
		buf += i;
	}
	append_len = FUNC1(var_name) + FUNC1(var_value) + 2;
	if (len < append_len)
		return -1;
	FUNC0(buf, "%s=%s", var_name, var_value);
	return 0;
}