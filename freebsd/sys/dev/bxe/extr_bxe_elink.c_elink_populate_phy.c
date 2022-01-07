
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct elink_phy {int type; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 scalar_t__ ELINK_INT_PHY ;
 int ELINK_STATUS_OK ;
 int PORT_HW_CFG_XGXS_EXT_PHY_TYPE_NOT_CONN ;
 int elink_populate_ext_phy (struct bxe_softc*,scalar_t__,int ,int ,scalar_t__,struct elink_phy*) ;
 int elink_populate_int_phy (struct bxe_softc*,int ,scalar_t__,struct elink_phy*) ;

__attribute__((used)) static elink_status_t elink_populate_phy(struct bxe_softc *sc, uint8_t phy_index, uint32_t shmem_base,
         uint32_t shmem2_base, uint8_t port, struct elink_phy *phy)
{
 elink_status_t status = ELINK_STATUS_OK;
 phy->type = PORT_HW_CFG_XGXS_EXT_PHY_TYPE_NOT_CONN;
 if (phy_index == ELINK_INT_PHY)
  return elink_populate_int_phy(sc, shmem_base, port, phy);
 status = elink_populate_ext_phy(sc, phy_index, shmem_base, shmem2_base,
     port, phy);
 return status;
}
