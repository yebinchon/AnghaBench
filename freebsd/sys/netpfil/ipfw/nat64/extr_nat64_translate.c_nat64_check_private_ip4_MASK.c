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
struct nat64_config {int flags; } ;
typedef  int in_addr_t ;

/* Variables and functions */
 int NAT64_ALLOW_PRIVATE ; 
 int NAT64_WKPFX ; 
 int FUNC0 (int) ; 

int
FUNC1(const struct nat64_config *cfg, in_addr_t ia)
{

	if (cfg->flags & NAT64_ALLOW_PRIVATE)
		return (0);

	/* WKPFX must not be used to represent non-global IPv4 addresses */
	if (cfg->flags & NAT64_WKPFX) {
		/* IN_PRIVATE */
		if ((ia & FUNC0(0xff000000)) == FUNC0(0x0a000000) ||
		    (ia & FUNC0(0xfff00000)) == FUNC0(0xac100000) ||
		    (ia & FUNC0(0xffff0000)) == FUNC0(0xc0a80000))
			return (1);
		/*
		 * RFC 5735:
		 *  192.0.0.0/24 - reserved for IETF protocol assignments
		 *  192.88.99.0/24 - for use as 6to4 relay anycast addresses
		 *  198.18.0.0/15 - for use in benchmark tests
		 *  192.0.2.0/24, 198.51.100.0/24, 203.0.113.0/24 - for use
		 *   in documentation and example code
		 */
		if ((ia & FUNC0(0xffffff00)) == FUNC0(0xc0000000) ||
		    (ia & FUNC0(0xffffff00)) == FUNC0(0xc0586300) ||
		    (ia & FUNC0(0xfffffe00)) == FUNC0(0xc6120000) ||
		    (ia & FUNC0(0xffffff00)) == FUNC0(0xc0000200) ||
		    (ia & FUNC0(0xfffffe00)) == FUNC0(0xc6336400) ||
		    (ia & FUNC0(0xffffff00)) == FUNC0(0xcb007100))
			return (1);
	}
	return (0);
}