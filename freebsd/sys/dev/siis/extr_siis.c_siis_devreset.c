
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct siis_channel {int r_mem; } ;
typedef int device_t ;


 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int DELAY (int) ;
 int EBUSY ;
 int SIIS_P_CTLSET ;
 int SIIS_P_CTL_DEV_RESET ;
 int SIIS_P_STS ;
 struct siis_channel* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
siis_devreset(device_t dev)
{
 struct siis_channel *ch = device_get_softc(dev);
 int timeout = 0;
 uint32_t val;

 ATA_OUTL(ch->r_mem, SIIS_P_CTLSET, SIIS_P_CTL_DEV_RESET);
 while (((val = ATA_INL(ch->r_mem, SIIS_P_STS)) &
     SIIS_P_CTL_DEV_RESET) != 0) {
  DELAY(100);
  if (timeout++ > 1000) {
   device_printf(dev, "device reset stuck "
       "(timeout 100ms) status = %08x\n", val);
   return (EBUSY);
  }
 }
 return (0);
}
