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
struct socket {int so_options; scalar_t__ so_linger; int /*<<< orphan*/  so_rcv; } ;
struct sdp_sock {scalar_t__ state; int flags; struct socket* socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int SDP_DROPPED ; 
 int /*<<< orphan*/  FUNC1 (struct sdp_sock*) ; 
 int SO_LINGER ; 
 scalar_t__ TCPS_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 struct sdp_sock* FUNC4 (struct sdp_sock*) ; 
 struct sdp_sock* FUNC5 (struct sdp_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*) ; 
 int /*<<< orphan*/  FUNC9 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*) ; 

__attribute__((used)) static void
FUNC11(struct sdp_sock *ssk)
{
	struct socket *so;
	int unread;

	so = ssk->socket;
	FUNC1(ssk);
	FUNC8(so);
	/*
	 * Neither sdp_closed() nor sdp_drop() should return NULL, as the
	 * socket is still open.
	 */
	if (ssk->state < TCPS_ESTABLISHED) {
		ssk = FUNC4(ssk);
		FUNC0(ssk != NULL,
		    ("sdp_start_disconnect: sdp_close() returned NULL"));
	} else if ((so->so_options & SO_LINGER) && so->so_linger == 0) {
		ssk = FUNC5(ssk, 0);
		FUNC0(ssk != NULL,
		    ("sdp_start_disconnect: sdp_drop() returned NULL"));
	} else {
		FUNC10(so);
		unread = FUNC3(&so->so_rcv);
		FUNC2(&so->so_rcv);
		FUNC9(ssk);
		if (!(ssk->flags & SDP_DROPPED)) {
			if (unread)
				FUNC7(ssk);
			else
				FUNC6(ssk);
		}
	}
}