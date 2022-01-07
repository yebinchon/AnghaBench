
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int MDIO_WC_DEVAD ;
 int MDIO_WC_REG_GP2_STATUS_GP_2_0 ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;
 int elink_get_warpcore_lane (struct elink_phy*,struct elink_params*) ;

__attribute__((used)) static int elink_warpcore_get_sigdet(struct elink_phy *phy,
         struct elink_params *params)
{
 uint16_t gp2_status_reg0, lane;
 struct bxe_softc *sc = params->sc;

 lane = elink_get_warpcore_lane(phy, params);

 elink_cl45_read(sc, phy, MDIO_WC_DEVAD, MDIO_WC_REG_GP2_STATUS_GP_2_0,
     &gp2_status_reg0);

 return (gp2_status_reg0 >> (8+lane)) & 0x1;
}
