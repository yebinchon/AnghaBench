
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_adapter {int dummy; } ;


 int AL_ETH_MAX_FRAME_LEN ;
 int AL_ETH_MIN_FRAME_LEN ;
 int EINVAL ;
 int ETHER_CRC_LEN ;
 int ETHER_HDR_LEN ;
 int ETHER_VLAN_ENCAP_LEN ;

__attribute__((used)) static int
al_eth_check_mtu(struct al_eth_adapter *adapter, int new_mtu)
{
 int max_frame = new_mtu + ETHER_HDR_LEN + ETHER_CRC_LEN + ETHER_VLAN_ENCAP_LEN;

 if ((new_mtu < AL_ETH_MIN_FRAME_LEN) ||
     (max_frame > AL_ETH_MAX_FRAME_LEN)) {
  return (EINVAL);
 }

 return (0);
}
