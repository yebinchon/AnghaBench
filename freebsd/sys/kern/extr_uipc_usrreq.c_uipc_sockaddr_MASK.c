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
struct unpcb {int /*<<< orphan*/ * unp_addr; } ;
struct socket {int dummy; } ;
struct sockaddr_un {int dummy; } ;
struct sockaddr {int /*<<< orphan*/  sa_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr const*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 struct sockaddr* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct unpcb* FUNC5 (struct socket*) ; 
 struct sockaddr sun_noname ; 

__attribute__((used)) static int
FUNC6(struct socket *so, struct sockaddr **nam)
{
	struct unpcb *unp;
	const struct sockaddr *sa;

	unp = FUNC5(so);
	FUNC0(unp != NULL, ("uipc_sockaddr: unp == NULL"));

	*nam = FUNC4(sizeof(struct sockaddr_un), M_SONAME, M_WAITOK);
	FUNC1(unp);
	if (unp->unp_addr != NULL)
		sa = (struct sockaddr *) unp->unp_addr;
	else
		sa = &sun_noname;
	FUNC3(sa, *nam, sa->sa_len);
	FUNC2(unp);
	return (0);
}