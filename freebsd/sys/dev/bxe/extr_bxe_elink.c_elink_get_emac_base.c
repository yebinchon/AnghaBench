
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int GRCBASE_EMAC0 ;
 int GRCBASE_EMAC1 ;
 int NIG_REG_PORT_SWAP ;
 int REG_RD (struct bxe_softc*,int ) ;






__attribute__((used)) static uint32_t elink_get_emac_base(struct bxe_softc *sc,
          uint32_t mdc_mdio_access, uint8_t port)
{
 uint32_t emac_base = 0;
 switch (mdc_mdio_access) {
 case 129:
  break;
 case 131:
  if (REG_RD(sc, NIG_REG_PORT_SWAP))
   emac_base = GRCBASE_EMAC1;
  else
   emac_base = GRCBASE_EMAC0;
  break;
 case 130:
  if (REG_RD(sc, NIG_REG_PORT_SWAP))
   emac_base = GRCBASE_EMAC0;
  else
   emac_base = GRCBASE_EMAC1;
  break;
 case 132:
  emac_base = (port) ? GRCBASE_EMAC1 : GRCBASE_EMAC0;
  break;
 case 128:
  emac_base = (port) ? GRCBASE_EMAC0 : GRCBASE_EMAC1;
  break;
 default:
  break;
 }
 return emac_base;

}
