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
struct unpcb {int /*<<< orphan*/ * unp_addr; struct unpcb* unp_conn; } ;
struct socket {int dummy; } ;
struct sockaddr_un {int dummy; } ;
struct sockaddr {int /*<<< orphan*/  sa_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr const*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 struct sockaddr* FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct unpcb* FUNC7 (struct socket*) ; 
 struct sockaddr sun_noname ; 

__attribute__((used)) static int
FUNC8(struct socket *so, struct sockaddr **nam)
{
	struct unpcb *unp, *unp2;
	const struct sockaddr *sa;

	unp = FUNC7(so);
	FUNC0(unp != NULL, ("uipc_peeraddr: unp == NULL"));

	*nam = FUNC6(sizeof(struct sockaddr_un), M_SONAME, M_WAITOK);
	FUNC1();
	/*
	 * XXX: It seems that this test always fails even when connection is
	 * established.  So, this else clause is added as workaround to
	 * return PF_LOCAL sockaddr.
	 */
	unp2 = unp->unp_conn;
	if (unp2 != NULL) {
		FUNC3(unp2);
		if (unp2->unp_addr != NULL)
			sa = (struct sockaddr *) unp2->unp_addr;
		else
			sa = &sun_noname;
		FUNC5(sa, *nam, sa->sa_len);
		FUNC4(unp2);
	} else {
		sa = &sun_noname;
		FUNC5(sa, *nam, sa->sa_len);
	}
	FUNC2();
	return (0);
}