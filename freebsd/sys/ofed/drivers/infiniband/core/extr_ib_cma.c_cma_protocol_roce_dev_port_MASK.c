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
struct ib_device {int /*<<< orphan*/  node_type; } ;
typedef  enum rdma_transport_type { ____Placeholder_rdma_transport_type } rdma_transport_type ;
typedef  enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;

/* Variables and functions */
 int IB_LINK_LAYER_ETHERNET ; 
 int RDMA_TRANSPORT_IB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ib_device*,int) ; 

__attribute__((used)) static bool FUNC2(struct ib_device *device, int port_num)
{
	enum rdma_link_layer ll = FUNC1(device, port_num);
	enum rdma_transport_type transport =
		FUNC0(device->node_type);

	return ll == IB_LINK_LAYER_ETHERNET && transport == RDMA_TRANSPORT_IB;
}