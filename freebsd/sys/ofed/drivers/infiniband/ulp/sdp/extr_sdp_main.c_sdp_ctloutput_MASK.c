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
struct sockopt {scalar_t__ sopt_level; int sopt_name; int sopt_dir; } ;
struct socket {int so_options; } ;
struct sdp_sock {int flags; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int ENOPROTOOPT ; 
 scalar_t__ IPPROTO_TCP ; 
 int SDP_DROPPED ; 
 int SDP_NODELAY ; 
 int SDP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdp_sock*) ; 
 scalar_t__ SOL_SOCKET ; 
#define  SOPT_GET 130 
#define  SOPT_SET 129 
 int SO_KEEPALIVE ; 
#define  TCP_NODELAY 128 
 int /*<<< orphan*/  FUNC3 (struct sdp_sock*) ; 
 struct sdp_sock* FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 
 int FUNC7 (struct sockopt*,int*,int,int) ; 
 int FUNC8 (struct sockopt*,int*,int) ; 

__attribute__((used)) static int
FUNC9(struct socket *so, struct sockopt *sopt)
{
	int	error, opt, optval;
	struct sdp_sock *ssk;

	error = 0;
	ssk = FUNC4(so);
	if (sopt->sopt_level == SOL_SOCKET && sopt->sopt_name == SO_KEEPALIVE) {
		FUNC0(ssk);
		if (so->so_options & SO_KEEPALIVE)
			FUNC5(so);
		else
			FUNC6(so);
		FUNC2(ssk);
	}
	if (sopt->sopt_level != IPPROTO_TCP)
		return (error);

	FUNC0(ssk);
	if (ssk->flags & (SDP_TIMEWAIT | SDP_DROPPED)) {
		FUNC2(ssk);
		return (ECONNRESET);
	}

	switch (sopt->sopt_dir) {
	case SOPT_SET:
		switch (sopt->sopt_name) {
		case TCP_NODELAY:
			FUNC2(ssk);
			error = FUNC7(sopt, &optval, sizeof optval,
			    sizeof optval);
			if (error)
				return (error);

			FUNC1(ssk);
			opt = SDP_NODELAY;
			if (optval)
				ssk->flags |= opt;
			else
				ssk->flags &= ~opt;
			FUNC3(ssk);
			FUNC2(ssk);
			break;

		default:
			FUNC2(ssk);
			error = ENOPROTOOPT;
			break;
		}
		break;

	case SOPT_GET:
		switch (sopt->sopt_name) {
		case TCP_NODELAY:
			optval = ssk->flags & SDP_NODELAY;
			FUNC2(ssk);
			error = FUNC8(sopt, &optval, sizeof optval);
			break;
		default:
			FUNC2(ssk);
			error = ENOPROTOOPT;
			break;
		}
		break;
	}
	return (error);
}