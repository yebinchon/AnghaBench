
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct siis_channel {int r_mem; } ;
typedef int device_t ;


 int ATA_INL (int ,int ) ;
 int DELAY (int) ;
 int EBUSY ;
 int SIIS_P_CTL_READY ;
 int SIIS_P_STS ;
 struct siis_channel* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int) ;

__attribute__((used)) static int
siis_wait_ready(device_t dev, int t)
{
 struct siis_channel *ch = device_get_softc(dev);
 int timeout = 0;
 uint32_t val;

 while (((val = ATA_INL(ch->r_mem, SIIS_P_STS)) &
     SIIS_P_CTL_READY) == 0) {
  DELAY(1000);
  if (timeout++ > t) {
   device_printf(dev, "port is not ready (timeout %dms) "
       "status = %08x\n", t, val);
   return (EBUSY);
  }
 }
 return (0);
}
