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
struct ifnet {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ifnet*,char const*,int,struct in6_addr*,int /*<<< orphan*/ ) ; 

int
FUNC1(struct ifnet *ifp, const char *name, int namelen,
    struct in6_addr *in6)
{

	return (FUNC0(ifp, name, namelen, in6, 0));
}