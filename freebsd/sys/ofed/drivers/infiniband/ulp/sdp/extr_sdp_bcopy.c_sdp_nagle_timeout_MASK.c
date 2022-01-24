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
struct TYPE_2__ {scalar_t__ sb_sndptr; } ;
struct socket {TYPE_1__ so_snd; } ;
struct sdp_sock {scalar_t__ state; int /*<<< orphan*/  nagle_timer; struct socket* socket; scalar_t__ nagle_last_unacked; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  SDP_NAGLE_TIMEOUT ; 
 scalar_t__ TCPS_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sdp_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 

__attribute__((used)) static void
FUNC6(void *data)
{
	struct sdp_sock *ssk = (struct sdp_sock *)data;
	struct socket *sk = ssk->socket;

	FUNC3(sk, "last_unacked = %ld\n", ssk->nagle_last_unacked);

	if (!FUNC0(&ssk->nagle_timer))
		return;
	FUNC1(&ssk->nagle_timer);

	if (!ssk->nagle_last_unacked)
		goto out;
	if (ssk->state == TCPS_CLOSED)
		return;
	ssk->nagle_last_unacked = 0;
	FUNC4(ssk, M_NOWAIT);

	FUNC5(ssk->socket);
out:
	if (sk->so_snd.sb_sndptr)
		FUNC2(&ssk->nagle_timer, SDP_NAGLE_TIMEOUT,
		    sdp_nagle_timeout, ssk);
}