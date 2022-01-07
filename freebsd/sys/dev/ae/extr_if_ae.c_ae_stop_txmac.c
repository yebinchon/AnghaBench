
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int dev; } ;
typedef TYPE_1__ ae_softc_t ;


 scalar_t__ AE_DMAREAD_EN ;
 int AE_DMAREAD_REG ;
 int AE_IDLE_DMAREAD ;
 int AE_IDLE_REG ;
 int AE_IDLE_TIMEOUT ;
 int AE_IDLE_TXMAC ;
 int AE_LOCK_ASSERT (TYPE_1__*) ;
 int AE_MAC_REG ;
 int AE_MAC_TX_EN ;
 scalar_t__ AE_READ_1 (TYPE_1__*,int ) ;
 int AE_READ_4 (TYPE_1__*,int ) ;
 int AE_WRITE_1 (TYPE_1__*,int ,int ) ;
 int AE_WRITE_4 (TYPE_1__*,int ,int) ;
 int DELAY (int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
ae_stop_txmac(ae_softc_t *sc)
{
 uint32_t val;
 int i;

 AE_LOCK_ASSERT(sc);




 val = AE_READ_4(sc, AE_MAC_REG);
 if ((val & AE_MAC_TX_EN) != 0) {
  val &= ~AE_MAC_TX_EN;
  AE_WRITE_4(sc, AE_MAC_REG, val);
 }




 if (AE_READ_1(sc, AE_DMAREAD_REG) == AE_DMAREAD_EN)
  AE_WRITE_1(sc, AE_DMAREAD_REG, 0);




 for (i = 0; i < AE_IDLE_TIMEOUT; i++) {
  val = AE_READ_4(sc, AE_IDLE_REG);
  if ((val & (AE_IDLE_TXMAC | AE_IDLE_DMAREAD)) == 0)
   break;
  DELAY(100);
 }
 if (i == AE_IDLE_TIMEOUT)
  device_printf(sc->dev, "timed out while stopping Tx MAC.\n");
}
