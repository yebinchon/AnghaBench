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
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct socket {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct inpcb {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int EAFNOSUPPORT ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  V_divcbinfo ; 
 int FUNC7 (struct inpcb*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 struct inpcb* FUNC8 (struct socket*) ; 

__attribute__((used)) static int
FUNC9(struct socket *so, struct sockaddr *nam, struct thread *td)
{
	struct inpcb *inp;
	int error;

	inp = FUNC8(so);
	FUNC6(inp != NULL, ("div_bind: inp == NULL"));
	/* in_pcbbind assumes that nam is a sockaddr_in
	 * and in_pcbbind requires a valid address. Since divert
	 * sockets don't we need to make sure the address is
	 * filled in properly.
	 * XXX -- divert should not be abusing in_pcbind
	 * and should probably have its own family.
	 */
	if (nam->sa_family != AF_INET)
		return EAFNOSUPPORT;
	((struct sockaddr_in *)nam)->sin_addr.s_addr = INADDR_ANY;
	FUNC2(&V_divcbinfo);
	FUNC4(inp);
	FUNC0(&V_divcbinfo);
	error = FUNC7(inp, nam, td->td_ucred);
	FUNC1(&V_divcbinfo);
	FUNC5(inp);
	FUNC3(&V_divcbinfo);
	return error;
}