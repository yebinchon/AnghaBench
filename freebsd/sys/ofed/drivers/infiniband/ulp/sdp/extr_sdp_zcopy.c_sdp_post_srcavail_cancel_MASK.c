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
struct socket {int dummy; } ;
struct sdp_sock {int /*<<< orphan*/  srcavail_cancel_work; int /*<<< orphan*/  socket; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDP_SRCAVAIL_CANCEL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct socket*,struct sdp_sock*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC2 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdp_sock*,int /*<<< orphan*/ ) ; 
 struct sdp_sock* FUNC5 (struct socket*) ; 

__attribute__((used)) static int FUNC6(struct socket *sk)
{
	struct sdp_sock *ssk = FUNC5(sk);
	struct mbuf *mb;

	FUNC3(ssk->socket, "Posting srcavail cancel\n");

	mb = FUNC2(sk, 0);
	FUNC0(sk, ssk, mb);

	FUNC4(ssk, 0);

	FUNC1(&ssk->srcavail_cancel_work,
			SDP_SRCAVAIL_CANCEL_TIMEOUT);

	return 0;
}