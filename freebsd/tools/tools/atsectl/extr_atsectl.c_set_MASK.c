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
typedef  void* uint8_t ;

/* Variables and functions */
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (void**) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**,int,int) ; 
 char* FUNC4 (char**,char*) ; 
 void* FUNC5 (char*,char**,int) ; 

__attribute__((used)) static void
FUNC6(char *eaddrstr)
{
	uint8_t eaddr[ETHER_ADDR_LEN];
	char *p;
	long l;
	int i;

	FUNC3(eaddr, 0x00, ETHER_ADDR_LEN);
	i = 0;
	while ((p = FUNC4(&eaddrstr, ":")) != NULL && i < ETHER_ADDR_LEN) {
		errno = 0;
		l = FUNC5(p, (char **)NULL, 16);
		if (l == 0 && errno != 0)
			FUNC1(1, "Failed to parse Ethernet address given: %s\n", p);
		if (l < 0x00 || l > 0xff)
			FUNC1(1, "Failed to parse Ethernet address given: %lx\n", l);
		eaddr[i++] = FUNC5(p, (char **)NULL, 16);
	}

	if (i != ETHER_ADDR_LEN)
		FUNC1(1, "Failed to parse Ethernet address given\n");

	FUNC0(eaddr);
	FUNC2(0);
}