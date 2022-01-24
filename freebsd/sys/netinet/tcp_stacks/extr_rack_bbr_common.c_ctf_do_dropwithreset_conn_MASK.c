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
struct tcphdr {int dummy; } ;
struct tcpcb {scalar_t__ t_inpcb; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,struct tcphdr*,struct tcpcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC3(struct mbuf *m, struct tcpcb *tp, struct tcphdr *th,
    int32_t rstreason, int32_t tlen)
{

	if (tp->t_inpcb) {
		FUNC2(tp->t_inpcb, ETIMEDOUT);
	}
	FUNC1(m, th, tp, tlen, rstreason);
	FUNC0(tp->t_inpcb);
}