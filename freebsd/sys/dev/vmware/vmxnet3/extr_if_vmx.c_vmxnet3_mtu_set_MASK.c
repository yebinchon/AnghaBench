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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ ETHER_CRC_LEN ; 
 scalar_t__ ETHER_HDR_LEN ; 
 scalar_t__ ETHER_VLAN_ENCAP_LEN ; 
 scalar_t__ VMXNET3_TX_MAXSIZE ; 

__attribute__((used)) static int
FUNC0(if_ctx_t ctx, uint32_t mtu)
{

	if (mtu > VMXNET3_TX_MAXSIZE - (ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN +
		ETHER_CRC_LEN))
		return (EINVAL);

	return (0);
}