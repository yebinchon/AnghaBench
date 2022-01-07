
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mtkswitch_softc {int dummy; } ;


 int MA_OWNED ;
 int MTKSWITCH_DUPLEX ;
 int MTKSWITCH_LINK_UP ;
 int MTKSWITCH_LOCK_ASSERT (struct mtkswitch_softc*,int ) ;
 int MTKSWITCH_POA ;
 scalar_t__ MTKSWITCH_PORT_IS_100M (int) ;
 int MTKSWITCH_READ (struct mtkswitch_softc*,int ) ;
 int MTKSWITCH_RXFLOW ;
 int MTKSWITCH_SPEED_10 ;
 int MTKSWITCH_SPEED_100 ;
 int MTKSWITCH_SPEED_1000 ;
 int MTKSWITCH_TXFLOW ;
 int POA_FE_SPEED (int) ;
 int POA_FE_XFC (int) ;
 int POA_GE_SPEED (int,int) ;



 int POA_GE_XFC (int,int) ;
 int POA_GE_XFC_RX_MSK ;
 int POA_GE_XFC_TX_MSK ;
 int POA_PRT_DPX (int) ;
 int POA_PRT_LINK (int) ;

__attribute__((used)) static uint32_t
mtkswitch_get_port_status(struct mtkswitch_softc *sc, int port)
{
 uint32_t val, res;

 MTKSWITCH_LOCK_ASSERT(sc, MA_OWNED);
 res = 0;
 val = MTKSWITCH_READ(sc, MTKSWITCH_POA);

 if (val & POA_PRT_LINK(port))
  res |= MTKSWITCH_LINK_UP;
 if (val & POA_PRT_DPX(port))
  res |= MTKSWITCH_DUPLEX;

 if (MTKSWITCH_PORT_IS_100M(port)) {
  if (val & POA_FE_SPEED(port))
   res |= MTKSWITCH_SPEED_100;
  if (val & POA_FE_XFC(port))
   res |= (MTKSWITCH_TXFLOW | MTKSWITCH_RXFLOW);
 } else {
  switch (POA_GE_SPEED(val, port)) {
  case 130:
   res |= MTKSWITCH_SPEED_10;
   break;
  case 129:
   res |= MTKSWITCH_SPEED_100;
   break;
  case 128:
   res |= MTKSWITCH_SPEED_1000;
   break;
  }

  val = POA_GE_XFC(val, port);
  if (val & POA_GE_XFC_TX_MSK)
   res |= MTKSWITCH_TXFLOW;
  if (val & POA_GE_XFC_RX_MSK)
   res |= MTKSWITCH_RXFLOW;
 }

 return (res);
}
