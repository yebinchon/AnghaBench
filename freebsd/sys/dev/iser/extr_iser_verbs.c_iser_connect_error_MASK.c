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
struct rdma_cm_id {struct iser_conn* context; } ;
struct iser_conn {int /*<<< orphan*/  up_cv; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISER_CONN_TERMINATING ; 
 int /*<<< orphan*/  FUNC0 (char*,struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct rdma_cm_id *cma_id)
{
	struct iser_conn *iser_conn;

	iser_conn = cma_id->context;

	FUNC0("conn %p", iser_conn);

	iser_conn->state = ISER_CONN_TERMINATING;

	FUNC1(&iser_conn->up_cv);
}