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
struct sdp_sock {int /*<<< orphan*/  state; scalar_t__ qp_active; struct rdma_cm_id* id; } ;
struct rdma_cm_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdp_sock*) ; 
 int /*<<< orphan*/  TCPS_CLOSED ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_cm_id*) ; 

__attribute__((used)) static void
FUNC4(struct sdp_sock *ssk)
{
	struct rdma_cm_id *id;

	FUNC1(ssk);
	if (ssk->id) {
		id = ssk->id;
		ssk->qp_active = 0;
		FUNC2(ssk);
		FUNC3(id);
		FUNC0(ssk);
	}
	ssk->state = TCPS_CLOSED;
}