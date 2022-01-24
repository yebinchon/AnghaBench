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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ena_adapter {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct ena_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC1 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ena_sysctl_buf_ring_size ; 
 int /*<<< orphan*/  ena_sysctl_rx_queue_size ; 

__attribute__((used)) static void
FUNC4(struct ena_adapter *adapter)
{
	device_t dev;

	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree;
	struct sysctl_oid_list *child;

	dev = adapter->pdev;

	ctx = FUNC2(dev);
	tree = FUNC3(dev);
	child = FUNC1(tree);

	/* Tuneable number of buffers in the buf-ring (drbr) */
	FUNC0(ctx, child, OID_AUTO, "buf_ring_size", CTLTYPE_INT |
	    CTLFLAG_RW, adapter, 0, ena_sysctl_buf_ring_size, "I",
	    "Size of the bufring");

	/* Tuneable number of Rx ring size */
	FUNC0(ctx, child, OID_AUTO, "rx_queue_size", CTLTYPE_INT |
	    CTLFLAG_RW, adapter, 0, ena_sysctl_rx_queue_size, "I",
	    "Size of the Rx ring. The size should be a power of 2. "
	    "Max value is 8K");
}