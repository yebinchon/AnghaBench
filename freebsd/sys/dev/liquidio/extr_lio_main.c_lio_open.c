
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct octeon_device {int dummy; } ;
struct TYPE_2__ {int hw_addr; } ;
struct lio {int intf_open; TYPE_1__ linfo; struct octeon_device* oct_dev; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;


 int ETHER_HDR_LEN ;
 int IFF_DRV_RUNNING ;
 int * IF_LLADDR (struct ifnet*) ;
 int LIO_IFSTATE_RUNNING ;
 int if_setdrvflagbits (struct ifnet*,int ,int ) ;
 int lio_dev_err (struct octeon_device*,char*,int) ;
 int lio_dev_info (struct octeon_device*,char*) ;
 int lio_ifstate_set (struct lio*,int ) ;
 scalar_t__ lio_is_mac_changed (int *,int *) ;
 int lio_send_rx_ctrl_cmd (struct lio*,int) ;
 int lio_set_mac (struct ifnet*,int *) ;
 int memcpy (int *,int *,int) ;

void
lio_open(void *arg)
{
 struct lio *lio = arg;
 struct ifnet *ifp = lio->ifp;
 struct octeon_device *oct = lio->oct_dev;
 uint8_t *mac_new, mac_old[ETHER_HDR_LEN];
 int ret = 0;

 lio_ifstate_set(lio, LIO_IFSTATE_RUNNING);


 lio->intf_open = 1;

 lio_dev_info(oct, "Interface Open, ready for traffic\n");


 lio_send_rx_ctrl_cmd(lio, 1);

 mac_new = IF_LLADDR(ifp);
 memcpy(mac_old, ((uint8_t *)&lio->linfo.hw_addr) + 2, ETHER_HDR_LEN);

 if (lio_is_mac_changed(mac_new, mac_old)) {
  ret = lio_set_mac(ifp, mac_new);
  if (ret)
   lio_dev_err(oct, "MAC change failed, error: %d\n", ret);
 }


 if_setdrvflagbits(ifp, IFF_DRV_RUNNING, 0);

 lio_dev_info(oct, "Interface is opened\n");
}
