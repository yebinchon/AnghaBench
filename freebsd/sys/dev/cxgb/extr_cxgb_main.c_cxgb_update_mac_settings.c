
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3_rx_mode {int dummy; } ;
struct cmac {int dummy; } ;
struct port_info {int tx_chan; int hw_addr; int adapter; struct cmac mac; struct ifnet* ifp; } ;
struct ifnet {int if_mtu; int if_capenable; } ;


 int ETHER_ADDR_LEN ;
 scalar_t__ ETHER_VLAN_ENCAP_LEN ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_MTU ;
 int IF_LLADDR (struct ifnet*) ;
 int PORT_LOCK_ASSERT_OWNED (struct port_info*) ;
 int bcopy (int ,int ,int ) ;
 int t3_init_rx_mode (struct t3_rx_mode*,struct port_info*) ;
 int t3_mac_set_address (struct cmac*,int ,int ) ;
 int t3_mac_set_mtu (struct cmac*,int) ;
 int t3_mac_set_rx_mode (struct cmac*,struct t3_rx_mode*) ;
 int t3_set_vlan_accel (int ,int,int) ;

__attribute__((used)) static void
cxgb_update_mac_settings(struct port_info *p)
{
 struct ifnet *ifp = p->ifp;
 struct t3_rx_mode rm;
 struct cmac *mac = &p->mac;
 int mtu, hwtagging;

 PORT_LOCK_ASSERT_OWNED(p);

 bcopy(IF_LLADDR(ifp), p->hw_addr, ETHER_ADDR_LEN);

 mtu = ifp->if_mtu;
 if (ifp->if_capenable & IFCAP_VLAN_MTU)
  mtu += ETHER_VLAN_ENCAP_LEN;

 hwtagging = (ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0;

 t3_mac_set_mtu(mac, mtu);
 t3_set_vlan_accel(p->adapter, 1 << p->tx_chan, hwtagging);
 t3_mac_set_address(mac, 0, p->hw_addr);
 t3_init_rx_mode(&rm, p);
 t3_mac_set_rx_mode(mac, &rm);
}
