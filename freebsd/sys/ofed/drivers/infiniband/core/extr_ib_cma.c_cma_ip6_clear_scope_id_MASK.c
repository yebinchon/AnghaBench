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
struct in6_addr {scalar_t__* s6_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct in6_addr*) ; 
 scalar_t__ FUNC1 (struct in6_addr*) ; 

__attribute__((used)) static void FUNC2(struct in6_addr *addr)
{
	/* make sure link local scope ID gets zeroed */
	if (FUNC1(addr) ||
	    FUNC0(addr)) {
		/* use byte-access to be alignment safe */
		addr->s6_addr[2] = 0;
		addr->s6_addr[3] = 0;
	}
}