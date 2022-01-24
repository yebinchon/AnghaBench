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
struct ether_addr {int dummy; } ;

/* Variables and functions */
 struct ether_addr* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,struct ether_addr*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static int
FUNC3(char const *text, struct ether_addr *addr)
{
	struct ether_addr *paddr;

	paddr = FUNC0(text);
	if (paddr != NULL) {
		*addr = *paddr;
		return (0);
	}
	if (FUNC1(text, addr)) {
		FUNC2("no match for host %s found", text);
		return (-1);
	}
	return (0);
}