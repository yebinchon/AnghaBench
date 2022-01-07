
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct elink_phy {int flags; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int) ;


 int ELINK_FLAGS_NOC ;
 int ELINK_FLAGS_SFP_NOT_APPROVED ;

 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_LASI_CTRL ;
 int MDIO_PMA_LASI_RXCTRL ;
 int MDIO_PMA_LASI_TXCTRL ;
 int MDIO_PMA_REG_8727_PCS_OPT_CTRL ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int elink_sfp_set_transmitter (struct elink_params*,struct elink_phy*,int) ;

__attribute__((used)) static void elink_8727_specific_func(struct elink_phy *phy,
         struct elink_params *params,
         uint32_t action)
{
 struct bxe_softc *sc = params->sc;
 uint16_t val;
 switch (action) {
 case 130:
  elink_sfp_set_transmitter(params, phy, 0);
  break;
 case 129:
  if (!(phy->flags & ELINK_FLAGS_SFP_NOT_APPROVED))
   elink_sfp_set_transmitter(params, phy, 1);
  break;
 case 128:
  elink_cl45_write(sc, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXCTRL,
     (1<<2) | (1<<5));
  elink_cl45_write(sc, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_LASI_TXCTRL,
     0);
  elink_cl45_write(sc, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_LASI_CTRL, 0x0006);

  elink_cl45_read(sc, phy, MDIO_PMA_DEVAD,
    MDIO_PMA_REG_8727_PCS_OPT_CTRL,
    &val);
  val |= (1<<12);
  if (phy->flags & ELINK_FLAGS_NOC)
   val |= (3<<5);



  if (!(phy->flags & ELINK_FLAGS_NOC))
   val &= 0xff8f;
  elink_cl45_write(sc, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_REG_8727_PCS_OPT_CTRL,
     val);
  break;
 default:
  ELINK_DEBUG_P1(sc, "Function 0x%x not supported by 8727\n",
     action);
  return;
 }
}
