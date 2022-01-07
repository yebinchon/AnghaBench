
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct elink_vars {int line_speed; scalar_t__ duplex; } ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 scalar_t__ DUPLEX_HALF ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int) ;
 int ELINK_LED_MODE_OPER ;




 int ELINK_STATUS_ERROR ;
 int ELINK_STATUS_OK ;
 int EMAC_MODE_25G_MODE ;
 int EMAC_MODE_HALF_DUPLEX ;
 int EMAC_MODE_PORT_GMII ;
 int EMAC_MODE_PORT_MII ;
 int EMAC_MODE_PORT_MII_10M ;
 scalar_t__ EMAC_REG_EMAC_MODE ;
 scalar_t__ GRCBASE_EMAC0 ;
 int elink_bits_dis (struct bxe_softc*,scalar_t__,int) ;
 int elink_bits_en (struct bxe_softc*,scalar_t__,int) ;
 int elink_set_led (struct elink_params*,struct elink_vars*,int ,int) ;

__attribute__((used)) static elink_status_t elink_emac_program(struct elink_params *params,
         struct elink_vars *vars)
{
 struct bxe_softc *sc = params->sc;
 uint8_t port = params->port;
 uint16_t mode = 0;

 ELINK_DEBUG_P0(sc, "setting link speed & duplex\n");
 elink_bits_dis(sc, GRCBASE_EMAC0 + port*0x400 +
         EMAC_REG_EMAC_MODE,
         (EMAC_MODE_25G_MODE |
   EMAC_MODE_PORT_MII_10M |
   EMAC_MODE_HALF_DUPLEX));
 switch (vars->line_speed) {
 case 131:
  mode |= EMAC_MODE_PORT_MII_10M;
  break;

 case 130:
  mode |= EMAC_MODE_PORT_MII;
  break;

 case 129:
  mode |= EMAC_MODE_PORT_GMII;
  break;

 case 128:
  mode |= (EMAC_MODE_25G_MODE | EMAC_MODE_PORT_GMII);
  break;

 default:

  ELINK_DEBUG_P1(sc, "Invalid line_speed 0x%x\n",
      vars->line_speed);
  return ELINK_STATUS_ERROR;
 }

 if (vars->duplex == DUPLEX_HALF)
  mode |= EMAC_MODE_HALF_DUPLEX;
 elink_bits_en(sc,
        GRCBASE_EMAC0 + port*0x400 + EMAC_REG_EMAC_MODE,
        mode);

 elink_set_led(params, vars, ELINK_LED_MODE_OPER, vars->line_speed);
 return ELINK_STATUS_OK;
}
