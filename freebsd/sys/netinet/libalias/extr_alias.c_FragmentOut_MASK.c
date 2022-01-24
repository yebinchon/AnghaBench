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
typedef  int /*<<< orphan*/  u_short ;
struct libalias {int dummy; } ;
struct in_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct in_addr*,struct in_addr*,int) ; 
 struct in_addr FUNC1 (struct libalias*,struct in_addr) ; 
 int /*<<< orphan*/  FUNC2 (struct libalias*) ; 
 int PKT_ALIAS_OK ; 

__attribute__((used)) static int
FUNC3(struct libalias *la, struct in_addr *ip_src, u_short *ip_sum)
{
	struct in_addr alias_address;

	FUNC2(la);
	alias_address = FUNC1(la, *ip_src);
	FUNC0(ip_sum,
	    &alias_address, ip_src, 2);
	*ip_src = alias_address;

	return (PKT_ALIAS_OK);
}