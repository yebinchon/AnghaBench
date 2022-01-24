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
struct sdp_sock {TYPE_1__ rx_ring; int /*<<< orphan*/  socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static inline void FUNC3(struct sdp_sock *ssk)
{
	FUNC2(ssk->socket, NULL, "Arming RX cq");
	FUNC1(ssk->socket, "Arming RX cq\n");

	FUNC0(ssk->rx_ring.cq, IB_CQ_NEXT_COMP);
}