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
struct protosw {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int EPFNOSUPPORT ; 
 int EPROTONOSUPPORT ; 
 short IPPROTO_MAX ; 
 int /*<<< orphan*/  IPPROTO_RAW ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 struct protosw* inet6sw ; 
 int* ip6_protox ; 
 struct protosw* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(short ip6proto)
{
	struct protosw *pr;

	/* Sanity checks. */
	if (ip6proto <= 0 || ip6proto >= IPPROTO_MAX)
		return (EPROTONOSUPPORT);

	/* Check if the protocol was indeed registered. */
	pr = FUNC0(PF_INET6, IPPROTO_RAW, SOCK_RAW);
	if (pr == NULL)
		return (EPFNOSUPPORT);
	if (ip6_protox[ip6proto] == pr - inet6sw)	/* IPPROTO_RAW */
		return (ENOENT);

	/* Reset the protocol slot to IPPROTO_RAW. */
	ip6_protox[ip6proto] = pr - inet6sw;
	return (0);
}