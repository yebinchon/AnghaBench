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
struct iser_device {int dummy; } ;
struct ib_conn {struct iser_device* device; } ;
struct iser_conn {struct ib_conn ib_conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct iser_conn*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_cm_id*) ; 
 struct iser_device* FUNC2 (struct rdma_cm_id*) ; 
 int FUNC3 (struct rdma_cm_id*,int) ; 

__attribute__((used)) static void
FUNC4(struct rdma_cm_id *cma_id)
{
	struct iser_device *device;
	struct iser_conn   *iser_conn;
	struct ib_conn   *ib_conn;
	int    ret;

	iser_conn = cma_id->context;

	ib_conn = &iser_conn->ib_conn;
	device = FUNC2(cma_id);
	if (!device) {
		FUNC0("conn %p device lookup/creation failed",
			 iser_conn);
		FUNC1(cma_id);
		return;
	}

	ib_conn->device = device;

	ret = FUNC3(cma_id, 1000);
	if (ret) {
		FUNC0("conn %p resolve route failed: %d", iser_conn, ret);
		FUNC1(cma_id);
		return;
	}
}