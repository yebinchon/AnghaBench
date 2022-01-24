#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
struct prison {int /*<<< orphan*/  pr_mtx; int /*<<< orphan*/  pr_hostname; } ;
struct in6_addr {int /*<<< orphan*/ * s6_addr; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  ctxt ;
struct TYPE_4__ {TYPE_1__* td_ucred; } ;
struct TYPE_3__ {struct prison* cr_prison; } ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  EUI64_GBIT ; 
 int /*<<< orphan*/  FUNC0 (struct in6_addr*) ; 
 int /*<<< orphan*/  EUI64_UBIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* curthread ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct ifnet *ifp, struct in6_addr *in6)
{
	MD5_CTX ctxt;
	struct prison *pr;
	u_int8_t digest[16];
	int hostnamelen;

	pr = curthread->td_ucred->cr_prison;
	FUNC6(&pr->pr_mtx);
	hostnamelen = FUNC8(pr->pr_hostname);
#if 0
	/* we need at least several letters as seed for ifid */
	if (hostnamelen < 3) {
		mtx_unlock(&pr->pr_mtx);
		return -1;
	}
#endif

	/* generate 8 bytes of pseudo-random value. */
	FUNC5(&ctxt, sizeof(ctxt));
	FUNC2(&ctxt);
	FUNC3(&ctxt, pr->pr_hostname, hostnamelen);
	FUNC7(&pr->pr_mtx);
	FUNC1(digest, &ctxt);

	/* assumes sizeof(digest) > sizeof(ifid) */
	FUNC4(digest, &in6->s6_addr[8], 8);

	/* make sure to set "u" bit to local, and "g" bit to individual. */
	in6->s6_addr[8] &= ~EUI64_GBIT;	/* g bit to "individual" */
	in6->s6_addr[8] |= EUI64_UBIT;	/* u bit to "local" */

	/* convert EUI64 into IPv6 interface identifier */
	FUNC0(in6);

	return 0;
}