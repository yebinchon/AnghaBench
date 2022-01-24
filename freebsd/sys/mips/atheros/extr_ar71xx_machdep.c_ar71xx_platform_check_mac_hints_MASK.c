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
 int /*<<< orphan*/  ar71xx_board_mac_addr ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int,int) ; 
 scalar_t__ FUNC2 (char*,int,char*,int*) ; 
 scalar_t__ FUNC3 (char*,int,char*,char const**) ; 

__attribute__((used)) static int
FUNC4(void)
{
	int i;
	const char *devid;
	int offset, is_local, unitid;

	for (i = 0; i < 8; i++) {
		if (FUNC3("ar71xx_mac_map", i, "devid",
		    &devid) != 0)
			break;
		if (FUNC2("ar71xx_mac_map", i, "unitid",
		    &unitid) != 0)
			break;
		if (FUNC2("ar71xx_mac_map", i, "offset",
		    &offset) != 0)
			break;
		if (FUNC2("ar71xx_mac_map", i, "is_local",
		    &is_local) != 0)
			break;
		FUNC1("ar71xx: devid '%s.%d', MAC offset '%d'\n",
		    devid, unitid, offset);
		(void) FUNC0(devid, unitid,
		    ar71xx_board_mac_addr, offset, is_local);
	}

	return (0);
}