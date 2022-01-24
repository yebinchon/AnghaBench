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
struct unpcb {struct socket* unp_socket; struct unpcb* unp_conn; } ;
struct socket {int /*<<< orphan*/  so_rcv; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct unpcb*) ; 
 scalar_t__ FUNC3 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct unpcb*) ; 
 struct mbuf* FUNC5 (struct mbuf*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*) ; 
 struct unpcb* FUNC8 (struct socket*) ; 
 int /*<<< orphan*/  FUNC9 (struct unpcb*) ; 
 scalar_t__ FUNC10 (struct unpcb*) ; 

__attribute__((used)) static int
FUNC11(struct socket *so, struct mbuf *m, int count)
{
	struct unpcb *unp, *unp2;
	struct socket *so2;
	int error;

	unp = FUNC8(so);

	FUNC2(unp);
	if ((unp2 = unp->unp_conn) == NULL) {
		FUNC4(unp);
		goto error;
	}
	if (unp != unp2) {
		if (FUNC3(unp2) == 0) {
			FUNC9(unp2);
			FUNC4(unp);
			FUNC2(unp2);
			if (FUNC10(unp2))
				goto error;
		} else
			FUNC4(unp);
	}
	so2 = unp2->unp_socket;

	FUNC0(&so2->so_rcv);
	if ((error = FUNC6(&so2->so_rcv, m, count)) == 0)
		FUNC7(so2);
	else
		FUNC1(&so2->so_rcv);

	FUNC4(unp2);

	return (error);
 error:
	for (int i = 0; i < count; i++)
		m = FUNC5(m);
	return (ECONNRESET);
}