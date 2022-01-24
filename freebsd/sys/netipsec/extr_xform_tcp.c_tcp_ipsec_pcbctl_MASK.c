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
struct tcpcb {int t_flags; } ;
struct sockopt {scalar_t__ sopt_name; scalar_t__ sopt_dir; } ;
struct inpcb {int inp_flags; } ;
typedef  int /*<<< orphan*/  optval ;

/* Variables and functions */
 int ECONNRESET ; 
 int ENOPROTOOPT ; 
 int INP_DROPPED ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int INP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct inpcb*) ; 
 scalar_t__ SOPT_GET ; 
 scalar_t__ TCP_MD5SIG ; 
 int TF_SIGNATURE ; 
 struct tcpcb* FUNC4 (struct inpcb*) ; 
 int FUNC5 (struct sockopt*,int*,int,int) ; 
 int FUNC6 (struct sockopt*,int*,int) ; 

__attribute__((used)) static int
FUNC7(struct inpcb *inp, struct sockopt *sopt)
{
	struct tcpcb *tp;
	int error, optval;

	if (sopt->sopt_name != TCP_MD5SIG) {
		return (ENOPROTOOPT);
	}

	if (sopt->sopt_dir == SOPT_GET) {
		FUNC0(inp);
		if (inp->inp_flags & (INP_TIMEWAIT | INP_DROPPED)) {
			FUNC1(inp);
			return (ECONNRESET);
		}
		tp = FUNC4(inp);
		optval = (tp->t_flags & TF_SIGNATURE) ? 1 : 0;
		FUNC1(inp);

		/* On success return with released INP_WLOCK */
		return (FUNC6(sopt, &optval, sizeof(optval)));
	}

	error = FUNC5(sopt, &optval, sizeof(optval), sizeof(optval));
	if (error != 0)
		return (error);

	/* INP_WLOCK_RECHECK */
	FUNC2(inp);
	if (inp->inp_flags & (INP_TIMEWAIT | INP_DROPPED)) {
		FUNC3(inp);
		return (ECONNRESET);
	}
	tp = FUNC4(inp);
	if (optval > 0)
		tp->t_flags |= TF_SIGNATURE;
	else
		tp->t_flags &= ~TF_SIGNATURE;

	FUNC3(inp);
	return (error);
}