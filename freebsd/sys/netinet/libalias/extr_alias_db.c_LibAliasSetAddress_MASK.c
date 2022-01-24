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
struct in_addr {scalar_t__ s_addr; } ;
struct libalias {int packetAliasMode; struct in_addr aliasAddress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC1 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC2 (struct libalias*) ; 
 int PKT_ALIAS_RESET_ON_ADDR_CHANGE ; 

void
FUNC3(struct libalias *la, struct in_addr addr)
{

	FUNC1(la);
	if (la->packetAliasMode & PKT_ALIAS_RESET_ON_ADDR_CHANGE
	    && la->aliasAddress.s_addr != addr.s_addr)
		FUNC0(la);

	la->aliasAddress = addr;
	FUNC2(la);
}