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
struct tcpopt {int dummy; } ;
struct tcphdr {int dummy; } ;
struct socket {int dummy; } ;
struct inpcb {struct socket* inp_socket; } ;
struct in_conninfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct in_conninfo*,struct tcpopt*,struct tcphdr*,struct inpcb*,struct socket**,int /*<<< orphan*/ *,void*,void*) ; 

void
FUNC2(struct in_conninfo *inc, struct tcpopt *to, struct tcphdr *th,
    struct inpcb *inp, void *tod, void *todctx)
{
	struct socket *lso = inp->inp_socket;

	FUNC0(inp);

	FUNC1(inc, to, th, inp, &lso, NULL, tod, todctx);
}