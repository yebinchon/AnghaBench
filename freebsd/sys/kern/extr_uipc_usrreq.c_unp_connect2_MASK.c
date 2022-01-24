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
struct unpcb {int unp_flags; struct unpcb* unp_conn; int /*<<< orphan*/  unp_refs; } ;
struct socket {int so_type; } ;

/* Variables and functions */
 int EPROTOTYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct unpcb*,int /*<<< orphan*/ ) ; 
 int PRU_CONNECT ; 
#define  SOCK_DGRAM 130 
#define  SOCK_SEQPACKET 129 
#define  SOCK_STREAM 128 
 int UNP_CONNWAIT ; 
 int UNP_NASCENT ; 
 int /*<<< orphan*/  FUNC2 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*) ; 
 struct unpcb* FUNC8 (struct socket*) ; 
 int /*<<< orphan*/  FUNC9 (struct unpcb*) ; 
 int /*<<< orphan*/  unp_reflink ; 

__attribute__((used)) static int
FUNC10(struct socket *so, struct socket *so2, int req)
{
	struct unpcb *unp;
	struct unpcb *unp2;

	unp = FUNC8(so);
	FUNC0(unp != NULL, ("unp_connect2: unp == NULL"));
	unp2 = FUNC8(so2);
	FUNC0(unp2 != NULL, ("unp_connect2: unp2 == NULL"));

	FUNC2(unp);
	FUNC2(unp2);

	if (so2->so_type != so->so_type)
		return (EPROTOTYPE);
	unp2->unp_flags &= ~UNP_NASCENT;
	unp->unp_conn = unp2;
	FUNC9(unp2);
	FUNC9(unp);
	switch (so->so_type) {
	case SOCK_DGRAM:
		FUNC3();
		FUNC1(&unp2->unp_refs, unp, unp_reflink);
		FUNC4();
		FUNC6(so);
		break;

	case SOCK_STREAM:
	case SOCK_SEQPACKET:
		unp2->unp_conn = unp;
		if (req == PRU_CONNECT &&
		    ((unp->unp_flags | unp2->unp_flags) & UNP_CONNWAIT))
			FUNC7(so);
		else
			FUNC6(so);
		FUNC6(so2);
		break;

	default:
		FUNC5("unp_connect2");
	}
	return (0);
}