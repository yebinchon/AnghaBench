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
struct tcpcb {scalar_t__ t_fb_ptr; } ;
struct tcp_rack {int dummy; } ;
struct sockopt {scalar_t__ sopt_dir; } ;
struct socket {int dummy; } ;
struct inpcb {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 scalar_t__ SOPT_GET ; 
 scalar_t__ SOPT_SET ; 
 int FUNC1 (struct socket*,struct sockopt*,struct inpcb*,struct tcpcb*,struct tcp_rack*) ; 
 int FUNC2 (struct socket*,struct sockopt*,struct inpcb*,struct tcpcb*,struct tcp_rack*) ; 

__attribute__((used)) static int
FUNC3(struct socket *so, struct sockopt *sopt, struct inpcb *inp, struct tcpcb *tp)
{
	int32_t error = EINVAL;
	struct tcp_rack *rack;

	rack = (struct tcp_rack *)tp->t_fb_ptr;
	if (rack == NULL) {
		/* Huh? */
		goto out;
	}
	if (sopt->sopt_dir == SOPT_SET) {
		return (FUNC2(so, sopt, inp, tp, rack));
	} else if (sopt->sopt_dir == SOPT_GET) {
		return (FUNC1(so, sopt, inp, tp, rack));
	}
out:
	FUNC0(inp);
	return (error);
}