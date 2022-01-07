
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_vars {int eee_status; } ;
struct elink_phy {int dummy; } ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 int ELINK_STATUS_OK ;
 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_EEE_ADV ;
 scalar_t__ MISC_REG_CPMU_LP_FW_ENABLE_P0 ;
 int REG_WR (struct bxe_softc*,scalar_t__,int ) ;
 int SHMEM_EEE_ADV_STATUS_MASK ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;

__attribute__((used)) static elink_status_t elink_eee_disable(struct elink_phy *phy,
    struct elink_params *params,
    struct elink_vars *vars)
{
 struct bxe_softc *sc = params->sc;


 REG_WR(sc, MISC_REG_CPMU_LP_FW_ENABLE_P0 + (params->port << 2), 0);

 elink_cl45_write(sc, phy, MDIO_AN_DEVAD, MDIO_AN_REG_EEE_ADV, 0x0);

 vars->eee_status &= ~SHMEM_EEE_ADV_STATUS_MASK;

 return ELINK_STATUS_OK;
}
