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
struct in6_multi {int dummy; } ;
struct in6_mfilter {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct ifnet*,struct in6_addr const*,int /*<<< orphan*/ *,struct in6_multi**,int const) ; 

int
FUNC3(struct ifnet *ifp, const struct in6_addr *mcaddr,
    /*const*/ struct in6_mfilter *imf, struct in6_multi **pinm,
    const int delay)
{
	int error;

	FUNC0();
	error = FUNC2(ifp, mcaddr, NULL, pinm, delay);
	FUNC1();
	return (error);
}