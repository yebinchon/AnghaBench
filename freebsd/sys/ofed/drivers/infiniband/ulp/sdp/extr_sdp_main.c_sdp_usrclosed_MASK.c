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
struct sdp_sock {int state; int /*<<< orphan*/  socket; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SDP_NEEDFIN ; 
 int /*<<< orphan*/  FUNC1 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdp_sock*) ; 
#define  TCPS_CLOSED 133 
#define  TCPS_CLOSE_WAIT 132 
#define  TCPS_ESTABLISHED 131 
 int TCPS_FIN_WAIT_1 ; 
 int TCPS_FIN_WAIT_2 ; 
 int TCPS_LAST_ACK ; 
#define  TCPS_LISTEN 130 
#define  TCPS_SYN_RECEIVED 129 
#define  TCPS_SYN_SENT 128 
 int /*<<< orphan*/  FUNC4 (struct sdp_sock*) ; 
 struct sdp_sock* FUNC5 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct sdp_sock *ssk)
{

	FUNC2(ssk);

	switch (ssk->state) {
	case TCPS_LISTEN:
		ssk->state = TCPS_CLOSED;
		FUNC3(ssk);
		FUNC6(ssk);
		FUNC1(ssk);
		/* FALLTHROUGH */
	case TCPS_CLOSED:
		ssk = FUNC5(ssk);
		/*
		 * sdp_closed() should never return NULL here as the socket is
		 * still open.
		 */
		FUNC0(ssk != NULL,
		    ("sdp_usrclosed: sdp_closed() returned NULL"));
		break;

	case TCPS_SYN_SENT:
		/* FALLTHROUGH */
	case TCPS_SYN_RECEIVED:
		ssk->flags |= SDP_NEEDFIN;
		break;

	case TCPS_ESTABLISHED:
		ssk->flags |= SDP_NEEDFIN;
		ssk->state = TCPS_FIN_WAIT_1;
		break;

	case TCPS_CLOSE_WAIT:
		ssk->state = TCPS_LAST_ACK;
		break;
	}
	if (ssk->state >= TCPS_FIN_WAIT_2) {
		/* Prevent the connection hanging in FIN_WAIT_2 forever. */
		if (ssk->state == TCPS_FIN_WAIT_2)
			FUNC4(ssk);
		else
			FUNC7(ssk->socket);
	}
}