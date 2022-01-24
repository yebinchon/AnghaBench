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
struct tcpcb {int /*<<< orphan*/  t_inpcb; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,struct tcphdr*,struct tcpcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct mbuf *m, struct tcpcb *tp, struct tcphdr *th,
    int32_t rstreason, int32_t tlen)
{
	if (tp != NULL) {
		FUNC1(m, th, tp, tlen, rstreason);
		FUNC0(tp->t_inpcb);
	} else
		FUNC1(m, th, NULL, tlen, rstreason);
}