
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds13rtc_softc {int chiptype; int use_century; int is_binary_counter; void* osfaddr; void* secaddr; int busdev; int dev; } ;
typedef int device_t ;


 void* DS133x_R_STATUS ;
 void* DS1340_R_STATUS ;
 void* DS137x_R_STATUS ;
 void* DS1388_R_SECOND ;
 void* DS1388_R_STATUS ;
 void* DS13xx_R_SECOND ;
 int ENXIO ;
 int TYPE_NONE ;
 int config_intrhook_oneshot (int ,struct ds13rtc_softc*) ;
 int device_get_parent (int ) ;
 struct ds13rtc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ds13rtc_get_chiptype (int ) ;
 int ds13rtc_start ;

__attribute__((used)) static int
ds13rtc_attach(device_t dev)
{
 struct ds13rtc_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->busdev = device_get_parent(dev);




 if ((sc->chiptype = ds13rtc_get_chiptype(dev)) == TYPE_NONE) {
  device_printf(dev, "impossible: cannot determine chip type\n");
  return (ENXIO);
 }


 if (sc->chiptype == 128)
  sc->secaddr = DS1388_R_SECOND;
 else
  sc->secaddr = DS13xx_R_SECOND;







 switch (sc->chiptype) {
 case 140:
 case 139:
 case 137:
  sc->osfaddr = DS13xx_R_SECOND;
  break;
 case 138:
 case 136:
 case 134:
 case 133:
 case 129:
  sc->osfaddr = DS133x_R_STATUS;
  sc->use_century = 1;
  break;
 case 135:
  sc->osfaddr = DS1340_R_STATUS;
  break;
 case 132:
 case 131:
 case 130:
  sc->osfaddr = DS137x_R_STATUS;
  sc->is_binary_counter = 1;
  break;
 case 128:
  sc->osfaddr = DS1388_R_STATUS;
  break;
 }





 config_intrhook_oneshot(ds13rtc_start, sc);

 return (0);
}
