
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct elink_vars {int eee_status; } ;
struct elink_phy {int dummy; } ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_STATUS_OK ;
 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_EEE_ADV ;
 scalar_t__ MISC_REG_CPMU_LP_MASK_EXT_P0 ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;
 int SHMEM_EEE_10G_ADV ;
 int SHMEM_EEE_1G_ADV ;
 int SHMEM_EEE_ADV_STATUS_MASK ;
 int SHMEM_EEE_ADV_STATUS_SHIFT ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;

__attribute__((used)) static elink_status_t elink_eee_advertise(struct elink_phy *phy,
      struct elink_params *params,
      struct elink_vars *vars, uint8_t modes)
{
 struct bxe_softc *sc = params->sc;
 uint16_t val = 0;


 REG_WR(sc, MISC_REG_CPMU_LP_MASK_EXT_P0 + (params->port << 2), 0xfc20);

 if (modes & SHMEM_EEE_10G_ADV) {
  ELINK_DEBUG_P0(sc, "Advertise 10GBase-T EEE\n");
  val |= 0x8;
 }
 if (modes & SHMEM_EEE_1G_ADV) {
  ELINK_DEBUG_P0(sc, "Advertise 1GBase-T EEE\n");
  val |= 0x4;
 }

 elink_cl45_write(sc, phy, MDIO_AN_DEVAD, MDIO_AN_REG_EEE_ADV, val);

 vars->eee_status &= ~SHMEM_EEE_ADV_STATUS_MASK;
 vars->eee_status |= (modes << SHMEM_EEE_ADV_STATUS_SHIFT);

 return ELINK_STATUS_OK;
}
