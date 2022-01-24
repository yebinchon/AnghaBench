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
struct thread {int dummy; } ;
struct socket {scalar_t__ so_pcb; } ;
struct inpcb {int inp_ip_p; int /*<<< orphan*/  inp_flags; int /*<<< orphan*/  inp_vflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  INP_HDRINCL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INP_IPV4 ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PRIV_NETINET_DIVERT ; 
 int /*<<< orphan*/  V_divcbinfo ; 
 int /*<<< orphan*/  div_recvspace ; 
 int /*<<< orphan*/  div_sendspace ; 
 int FUNC4 (struct socket*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inpcb* FUNC7 (struct socket*) ; 

__attribute__((used)) static int
FUNC8(struct socket *so, int proto, struct thread *td)
{
	struct inpcb *inp;
	int error;

	inp  = FUNC7(so);
	FUNC3(inp == NULL, ("div_attach: inp != NULL"));
	if (td != NULL) {
		error = FUNC5(td, PRIV_NETINET_DIVERT);
		if (error)
			return (error);
	}
	error = FUNC6(so, div_sendspace, div_recvspace);
	if (error)
		return error;
	FUNC0(&V_divcbinfo);
	error = FUNC4(so, &V_divcbinfo);
	if (error) {
		FUNC1(&V_divcbinfo);
		return error;
	}
	inp = (struct inpcb *)so->so_pcb;
	FUNC1(&V_divcbinfo);
	inp->inp_ip_p = proto;
	inp->inp_vflag |= INP_IPV4;
	inp->inp_flags |= INP_HDRINCL;
	FUNC2(inp);
	return 0;
}