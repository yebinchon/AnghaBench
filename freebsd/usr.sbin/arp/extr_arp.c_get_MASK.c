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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARP_XO_VERSION ; 
 struct sockaddr_in* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  print_entry ; 
 int /*<<< orphan*/  rifname ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(char *host)
{
	struct sockaddr_in *addr;
	int found;

	addr = FUNC0(host);
	if (addr == NULL)
		return (1);

	FUNC9(ARP_XO_VERSION);
	FUNC7("arp");
	FUNC8("arp-cache");

	found = FUNC2(addr->sin_addr.s_addr, print_entry);

	if (found == 0) {
		FUNC5("{d:hostname/%s} ({d:ip-address/%s}) -- no entry",
		    host, FUNC1(addr->sin_addr));
		if (rifname)
			FUNC5(" on {d:interface/%s}", rifname);
		FUNC5("\n");
	}

	FUNC4("arp-cache");
	FUNC3("arp");
	FUNC6();

	return (found == 0);
}