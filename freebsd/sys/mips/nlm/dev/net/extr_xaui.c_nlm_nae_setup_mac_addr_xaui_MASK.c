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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  XAUIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC6(uint64_t base, int nblock, int iface,
    int port_type, unsigned char *mac_addr)
{
	FUNC5(base,
	    FUNC1(nblock),
	    (mac_addr[5] << 24) |
	    (mac_addr[4] << 16) |
	    (mac_addr[3] << 8)  |
	    mac_addr[2]);

	FUNC5(base,
	    FUNC0(nblock),
	    (mac_addr[1] << 24) |
	    (mac_addr[0] << 16));

	FUNC5(base,
	    FUNC3(nblock),
	    0xffffffff);
	FUNC5(base,
	    FUNC2(nblock),
	    0xffffffff);

	FUNC4(base, nblock, iface,
	    XAUIC,
	    1, /* broadcast enabled */
	    1, /* multicast enabled */
	    0, /* do not accept pause frames */
	    0 /* promisc mode disabled */
	    );
}