
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int EINVAL ;
 unsigned int ETH_FCS_LEN ;
 unsigned int ETH_HLEN ;
 unsigned int MIN (int ,int ) ;
 int PAGE_SIZE ;
 unsigned int VLAN_HLEN ;
 unsigned int XGBE_RX_BUF_ALIGN ;
 int XGBE_RX_MIN_BUF_SIZE ;
 unsigned int XGMAC_JUMBO_PACKET_MTU ;

__attribute__((used)) static int xgbe_calc_rx_buf_size(struct ifnet *netdev, unsigned int mtu)
{
 unsigned int rx_buf_size;

 if (mtu > XGMAC_JUMBO_PACKET_MTU) {
  return -EINVAL;
 }

 rx_buf_size = mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
 rx_buf_size = MIN(XGBE_RX_MIN_BUF_SIZE, PAGE_SIZE);

 rx_buf_size = (rx_buf_size + XGBE_RX_BUF_ALIGN - 1) &
        ~(XGBE_RX_BUF_ALIGN - 1);

 return rx_buf_size;
}
