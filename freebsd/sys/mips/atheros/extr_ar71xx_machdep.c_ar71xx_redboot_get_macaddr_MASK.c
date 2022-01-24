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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  macaddr ;

/* Variables and functions */
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  ar71xx_board_mac_addr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char*,char*,int*,int*,int*,int*,int*,int*) ; 

__attribute__((used)) static int
FUNC5(void)
{
	char *var;
	int count = 0, i;
	uint32_t macaddr[ETHER_ADDR_LEN];
	uint8_t tmpmac[ETHER_ADDR_LEN];

	/*
	 * "ethaddr" is passed via envp on RedBoot platforms
	 * "kmac" is passed via argv on RouterBOOT platforms
	 */
	if ((var = FUNC2("ethaddr")) != NULL ||
	    (var = FUNC2("kmac")) != NULL) {
		count = FUNC4(var, "%x%*c%x%*c%x%*c%x%*c%x%*c%x",
		    &macaddr[0], &macaddr[1],
		    &macaddr[2], &macaddr[3],
		    &macaddr[4], &macaddr[5]);

		if (count < 6) {
			FUNC3(macaddr, 0,
			    sizeof(macaddr));
		} else {
			for (i = 0; i < ETHER_ADDR_LEN; i++)
				tmpmac[i] = macaddr[i] & 0xff;
			(void) FUNC0(ar71xx_board_mac_addr,
			    tmpmac,
			    0, /* offset */
			    0); /* is_local */
		}
		FUNC1(var);
		return (0);
	}
	return (-1);
}