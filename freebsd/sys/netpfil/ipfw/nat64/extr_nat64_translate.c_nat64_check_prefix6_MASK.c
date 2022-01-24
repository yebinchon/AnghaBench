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
struct TYPE_2__ {scalar_t__* __u6_addr8; } ;
struct in6_addr {TYPE_1__ __u6_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct in6_addr const*) ; 
 scalar_t__ FUNC1 (struct in6_addr const*) ; 
 scalar_t__ FUNC2 (struct in6_addr const*) ; 
 scalar_t__ FUNC3 (struct in6_addr const*) ; 
 scalar_t__ FUNC4 (int) ; 

int
FUNC5(const struct in6_addr *prefix, int length)
{

	if (FUNC4(length) != 0)
		return (EINVAL);

	/* Well-known prefix has 96 prefix length */
	if (FUNC3(prefix) && length != 96)
		return (EINVAL);

	/* Bits 64 to 71 must be set to zero */
	if (prefix->__u6_addr.__u6_addr8[8] != 0)
		return (EINVAL);

	/* Some extra checks */
	if (FUNC1(prefix) ||
	    FUNC2(prefix) ||
	    FUNC0(prefix))
		return (EINVAL);
	return (0);
}