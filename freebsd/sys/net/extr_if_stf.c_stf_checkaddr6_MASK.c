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
struct stf_softc {int dummy; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  in4 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct in6_addr*) ; 
 scalar_t__ FUNC1 (struct in6_addr*) ; 
 scalar_t__ FUNC2 (struct in6_addr*) ; 
 scalar_t__ FUNC3 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct in_addr*,int) ; 
 int FUNC5 (struct stf_softc*,struct in_addr*,struct ifnet*) ; 

__attribute__((used)) static int
FUNC6(struct stf_softc *sc, struct in6_addr *in6, struct ifnet *inifp)
{
	/*
	 * check 6to4 addresses
	 */
	if (FUNC1(in6)) {
		struct in_addr in4;
		FUNC4(FUNC0(in6), &in4, sizeof(in4));
		return FUNC5(sc, &in4, inifp);
	}

	/*
	 * reject anything that look suspicious.  the test is implemented
	 * in ip6_input too, but we check here as well to
	 * (1) reject bad packets earlier, and
	 * (2) to be safe against future ip6_input change.
	 */
	if (FUNC2(in6) || FUNC3(in6))
		return -1;

	return 0;
}