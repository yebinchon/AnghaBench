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
struct test_pkt {TYPE_1__* tss; } ;
struct rtt {int /*<<< orphan*/  e2e; int /*<<< orphan*/  a2b_b2a; int /*<<< orphan*/  b2a; int /*<<< orphan*/  a2b; } ;
struct TYPE_2__ {int /*<<< orphan*/  sent; int /*<<< orphan*/  recvd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct test_pkt *tpp, struct rtt *rttp)
{

    FUNC1(&tpp->tss[1].recvd, &tpp->tss[0].sent, &rttp->a2b);
    FUNC1(&tpp->tss[0].recvd, &tpp->tss[1].sent, &rttp->b2a);
    FUNC0(&rttp->a2b, &rttp->b2a, &rttp->a2b_b2a);
    FUNC1(&tpp->tss[0].recvd, &tpp->tss[0].sent, &rttp->e2e);
}