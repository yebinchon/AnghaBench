
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ale_softc {int ale_dev; } ;


 int ALE_IDLE_STATUS ;
 int ALE_MASTER_CFG ;
 int ALE_RESET_TIMEOUT ;
 int CSR_READ_4 (struct ale_softc*,int) ;
 int CSR_WRITE_4 (struct ale_softc*,int,int) ;
 int DELAY (int) ;
 int MASTER_RESET ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static void
ale_reset(struct ale_softc *sc)
{
 uint32_t reg;
 int i;


 CSR_WRITE_4(sc, 0x1008, CSR_READ_4(sc, 0x1008) | 0x8000);

 CSR_WRITE_4(sc, ALE_MASTER_CFG, MASTER_RESET);
 for (i = ALE_RESET_TIMEOUT; i > 0; i--) {
  DELAY(10);
  if ((CSR_READ_4(sc, ALE_MASTER_CFG) & MASTER_RESET) == 0)
   break;
 }
 if (i == 0)
  device_printf(sc->ale_dev, "master reset timeout!\n");

 for (i = ALE_RESET_TIMEOUT; i > 0; i--) {
  if ((reg = CSR_READ_4(sc, ALE_IDLE_STATUS)) == 0)
   break;
  DELAY(10);
 }

 if (i == 0)
  device_printf(sc->ale_dev, "reset timeout(0x%08x)!\n", reg);
}
