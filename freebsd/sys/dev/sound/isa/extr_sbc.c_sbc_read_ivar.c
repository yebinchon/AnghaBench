
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sndcard_func {uintptr_t func; } ;
struct sbc_softc {uintptr_t bd_ver; } ;
typedef int device_t ;


 int ENOENT ;
 struct sndcard_func* device_get_ivars (int ) ;
 struct sbc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
sbc_read_ivar(device_t bus, device_t dev, int index, uintptr_t * result)
{
 struct sbc_softc *scp = device_get_softc(bus);
 struct sndcard_func *func = device_get_ivars(dev);

 switch (index) {
 case 0:
  *result = func->func;
  break;

 case 1:
  *result = scp->bd_ver;
        break;

 default:
  return ENOENT;
 }

 return 0;
}
