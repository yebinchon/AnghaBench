#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int SC_AUTO ; 
 TYPE_1__* convtbl ; 
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 

const char *
FUNC3(void)
{
	int i;
	size_t len;
	static char *buf;

	if (buf == NULL) {
		len = 0;
		for (i = 0; i <= SC_AUTO; i++)
			len += FUNC2(convtbl[i].name) + 2;
		if ((buf = FUNC0(len)) != NULL) {
			buf[0] = '\0';
			for (i = 0; i <= SC_AUTO; i++) {
				FUNC1(buf, convtbl[i].name);
				if (i < SC_AUTO)
					FUNC1(buf, ", ");
			}
		} else
			return ("");
	}
	return (buf);
}