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
struct in6_addr {int* s6_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ FUNC0 (int**,int**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC2(struct in6_addr *p1, struct in6_addr *p2, int len)
{
	int bytelen, bitlen;

	/* sanity check */
	if (0 > len || len > 128) {
		FUNC1(LOG_ERR, "in6_are_prefix_equal: invalid prefix length(%d)\n",
		    len);
		return (0);
	}

	bytelen = len / 8;
	bitlen = len % 8;

	if (FUNC0(&p1->s6_addr, &p2->s6_addr, bytelen))
		return (0);
	if (bitlen != 0 &&
	    p1->s6_addr[bytelen] >> (8 - bitlen) !=
	    p2->s6_addr[bytelen] >> (8 - bitlen))
		return (0);

	return (1);
}