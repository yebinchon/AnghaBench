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
typedef  char uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,int) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static int
FUNC4(uint8_t *buf, int len, const char *var_name)
{
	int nremoved, i, name_len;

	nremoved = 0;
	name_len = FUNC2(var_name);
	while (len > 0) {
		i = FUNC2(buf) + 1;
		if (i == 1)
			break;
		if (FUNC3(buf, var_name, name_len) == 0 && buf[name_len] == '=') {
			FUNC0(buf, buf + i, len - i);
			FUNC1(buf + len - i, '\0', i);
			nremoved += 1;
			continue;
		}
		len -= i;
		buf += i;
	}
	return nremoved;
}