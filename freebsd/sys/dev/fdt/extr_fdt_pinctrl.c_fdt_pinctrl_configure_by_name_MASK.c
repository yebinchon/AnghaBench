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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,void**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 

int
FUNC6(device_t client, const char * name)
{
	char * names;
	int i, offset, nameslen;

	nameslen = FUNC0(FUNC3(client), "pinctrl-names",
	    (void **)&names);
	if (nameslen <= 0)
		return (ENOENT);
	for (i = 0, offset = 0; offset < nameslen; i++) {
		if (FUNC4(name, &names[offset]) == 0)
			break;
		offset += FUNC5(&names[offset]) + 1;
	}
	FUNC1(names);
	if (offset < nameslen)
		return (FUNC2(client, i));
	else
		return (ENOENT);
}