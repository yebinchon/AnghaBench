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
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct in6_addr const*) ; 
 scalar_t__ FUNC1 (struct in6_addr const*) ; 
 scalar_t__ FUNC2 (struct in6_addr const*) ; 
 scalar_t__ FUNC3 (struct in6_addr const*) ; 

__attribute__((used)) static int
FUNC4(const struct in6_addr *addr)
{

	if (FUNC2(addr) ||
	    FUNC0(addr) ||
	    FUNC1(addr) ||
	    FUNC3(addr))
		return (EINVAL);
	return (0);
}