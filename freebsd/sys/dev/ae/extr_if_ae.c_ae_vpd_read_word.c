
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int dev; } ;
typedef TYPE_1__ ae_softc_t ;


 int AE_READ_4 (TYPE_1__*,int ) ;
 int AE_VPD_CAP_ADDR_MASK ;
 int AE_VPD_CAP_ADDR_SHIFT ;
 int AE_VPD_CAP_DONE ;
 int AE_VPD_CAP_REG ;
 int AE_VPD_DATA_REG ;
 int AE_VPD_TIMEOUT ;
 int AE_WRITE_4 (TYPE_1__*,int ,int) ;
 int DELAY (int) ;
 int ETIMEDOUT ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
ae_vpd_read_word(ae_softc_t *sc, int reg, uint32_t *word)
{
 uint32_t val;
 int i;

 AE_WRITE_4(sc, AE_VPD_DATA_REG, 0);




 val = 0x100 + reg * 4;
 AE_WRITE_4(sc, AE_VPD_CAP_REG, (val << AE_VPD_CAP_ADDR_SHIFT) &
     AE_VPD_CAP_ADDR_MASK);
 for (i = 0; i < AE_VPD_TIMEOUT; i++) {
  DELAY(2000);
  val = AE_READ_4(sc, AE_VPD_CAP_REG);
  if ((val & AE_VPD_CAP_DONE) != 0)
   break;
 }
 if (i == AE_VPD_TIMEOUT) {
  device_printf(sc->dev, "timeout reading VPD register %d.\n",
      reg);
  return (ETIMEDOUT);
 }
 *word = AE_READ_4(sc, AE_VPD_DATA_REG);
 return (0);
}
