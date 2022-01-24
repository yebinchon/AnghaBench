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
struct TYPE_2__ {int /*<<< orphan*/  cq; } ;
struct sdp_sock {TYPE_1__ tx_ring; int /*<<< orphan*/  socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdp_sock*) ; 

__attribute__((used)) static inline void FUNC5(struct sdp_sock *ssk)
{
	FUNC2(ssk->socket, NULL, "Arming TX cq");
	FUNC1(ssk->socket, "Arming TX cq. credits: %d, posted: %d\n",
		FUNC3(ssk), FUNC4(ssk));

	FUNC0(ssk->tx_ring.cq, IB_CQ_NEXT_COMP);
}