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
struct sdp_sock {int flags; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int SDP_DROPPED ; 
 int SDP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdp_sock*) ; 
 struct sdp_sock* FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdp_sock*) ; 

__attribute__((used)) static int
FUNC4(struct socket *so)
{
	struct sdp_sock *ssk;
	int error = 0;

	ssk = FUNC2(so);
	FUNC0(ssk);
	if (ssk->flags & (SDP_TIMEWAIT | SDP_DROPPED)) {
		error = ECONNRESET;
		goto out;
	}
	FUNC3(ssk);
out:
	FUNC1(ssk);
	return (error);
}