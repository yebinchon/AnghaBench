
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct bxe_softc {int sp_rtnl_task; int sp_rtnl_state; } ;
struct TYPE_4__ {TYPE_1__* port_hw_config; } ;
struct TYPE_3__ {int external_phy_config; } ;


 int BLOGW (struct bxe_softc*,char*) ;
 int BXE_SP_RTNL_FAN_FAILURE ;
 int PORT_HW_CFG_XGXS_EXT_PHY_TYPE_FAILURE ;
 int PORT_HW_CFG_XGXS_EXT_PHY_TYPE_MASK ;
 int SC_PORT (struct bxe_softc*) ;
 int SHMEM_RD (struct bxe_softc*,int ) ;
 int SHMEM_WR (struct bxe_softc*,int ,int ) ;
 int bxe_panic (struct bxe_softc*,char*) ;
 int bxe_set_bit (int ,int *) ;
 TYPE_2__ dev_info ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void
bxe_fan_failure(struct bxe_softc *sc)
{
    int port = SC_PORT(sc);
    uint32_t ext_phy_config;


    ext_phy_config =
        SHMEM_RD(sc, dev_info.port_hw_config[port].external_phy_config);

    ext_phy_config &= ~PORT_HW_CFG_XGXS_EXT_PHY_TYPE_MASK;
    ext_phy_config |= PORT_HW_CFG_XGXS_EXT_PHY_TYPE_FAILURE;
    SHMEM_WR(sc, dev_info.port_hw_config[port].external_phy_config,
             ext_phy_config);


    BLOGW(sc, "Fan Failure has caused the driver to shutdown "
              "the card to prevent permanent damage. "
              "Please contact OEM Support for assistance\n");



    bxe_panic(sc, ("Schedule task to handle fan failure\n"));
}
