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
typedef  int /*<<< orphan*/  uint32_t ;
struct ucred {int dummy; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct ip6_pktopts {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  inc_fibnum; } ;
struct inpcb {TYPE_1__ inp_inc; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct inpcb*,struct ifnet*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sockaddr_in6*,struct ip6_pktopts*,struct inpcb*,struct ucred*,struct ifnet**,struct in6_addr*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ *) ; 

int
FUNC3(struct sockaddr_in6 *dstsock, struct ip6_pktopts *opts,
    struct inpcb *inp, struct ucred *cred, int scope_ambiguous,
    struct in6_addr *srcp, int *hlim)
{
	struct ifnet *retifp;
	uint32_t fibnum;
	int error;

	fibnum = inp->inp_inc.inc_fibnum;
	retifp = NULL;

	error = FUNC1(fibnum, dstsock, opts, inp, cred, &retifp, srcp);
	if (error != 0)
		return (error);

	if (hlim != NULL)
		*hlim = FUNC0(inp, retifp);

	if (retifp == NULL || scope_ambiguous == 0)
		return (0);

	/*
	 * Application should provide a proper zone ID or the use of
	 * default zone IDs should be enabled.  Unfortunately, some
	 * applications do not behave as it should, so we need a
	 * workaround.  Even if an appropriate ID is not determined
	 * (when it's required), if we can determine the outgoing
	 * interface. determine the zone ID based on the interface.
	 */
	error = FUNC2(&dstsock->sin6_addr, retifp, NULL);

	return (error);
}