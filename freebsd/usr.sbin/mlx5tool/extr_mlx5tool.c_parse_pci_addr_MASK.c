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
struct mlx5_tool_addr {unsigned long func; unsigned long slot; unsigned long bus; unsigned long domain; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 
 unsigned long FUNC2 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int
FUNC4(const char *addrstr, struct mlx5_tool_addr *addr)
{
	char *eppos;
	unsigned long selarr[4];
	int i;

	if (addrstr == NULL) {
		FUNC3("no pci address specified");
		return (1);
	}
	if (FUNC1(addrstr, "pci", 3) == 0) {
		addrstr += 3;
		i = 0;
		while (FUNC0(*addrstr) && i < 4) {
			selarr[i++] = FUNC2(addrstr, &eppos, 10);
			addrstr = eppos;
			if (*addrstr == ':')
				addrstr++;
		}
		if (i > 0 && *addrstr == '\0') {
			addr->func = (i > 2) ? selarr[--i] : 0;
			addr->slot = (i > 0) ? selarr[--i] : 0;
			addr->bus = (i > 0) ? selarr[--i] : 0;
			addr->domain = (i > 0) ? selarr[--i] : 0;
			return (0);
		}
	}
	FUNC3("invalid pci address %s", addrstr);
	return (1);
}