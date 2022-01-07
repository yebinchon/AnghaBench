
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int if_ctx_t ;


 int EINVAL ;
 scalar_t__ ETHER_CRC_LEN ;
 scalar_t__ ETHER_HDR_LEN ;
 scalar_t__ ETHER_VLAN_ENCAP_LEN ;
 scalar_t__ VMXNET3_TX_MAXSIZE ;

__attribute__((used)) static int
vmxnet3_mtu_set(if_ctx_t ctx, uint32_t mtu)
{

 if (mtu > VMXNET3_TX_MAXSIZE - (ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN +
  ETHER_CRC_LEN))
  return (EINVAL);

 return (0);
}
