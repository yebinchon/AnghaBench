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
struct in6_addr {scalar_t__* s6_addr16; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct in6_addr*) ; 
 scalar_t__ FUNC1 (struct in6_addr*) ; 

int
FUNC2(struct in6_addr *in6)
{
	int modified = 0;

	if (FUNC1(in6) || FUNC0(in6)) {
		if (in6->s6_addr16[1] != 0)
			modified = 1;
		in6->s6_addr16[1] = 0;
	}

	return (modified);
}