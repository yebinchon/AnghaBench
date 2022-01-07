
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int superio_dev_type_t ;
struct superio_devinfo {void* dma; void* irq; void* iobase2; void* iobase; int type; int ldn; } ;
struct siosc {int devlist; } ;
typedef int * device_t ;


 int * BUS_ADD_CHILD (int *,int ,int *,int) ;
 int STAILQ_INSERT_TAIL (int *,struct superio_devinfo*,int ) ;
 struct superio_devinfo* device_get_ivars (int *) ;
 struct siosc* device_get_softc (int *) ;
 int device_printf (int *,char*,int ,int ) ;
 int devtype_to_str (int ) ;
 int link ;
 int sio_conf_enter (struct siosc*) ;
 int sio_conf_exit (struct siosc*) ;
 void* sio_ldn_readw (struct siosc*,int ,int) ;

__attribute__((used)) static void
superio_add_known_child(device_t dev, superio_dev_type_t type, uint8_t ldn)
{
 struct siosc *sc = device_get_softc(dev);
 struct superio_devinfo *dinfo;
 device_t child;

 child = BUS_ADD_CHILD(dev, 0, ((void*)0), -1);
 if (child == ((void*)0)) {
  device_printf(dev, "failed to add child for ldn %d, type %s\n",
      ldn, devtype_to_str(type));
  return;
 }
 dinfo = device_get_ivars(child);
 dinfo->ldn = ldn;
 dinfo->type = type;
 sio_conf_enter(sc);
 dinfo->iobase = sio_ldn_readw(sc, ldn, 0x60);
 dinfo->iobase2 = sio_ldn_readw(sc, ldn, 0x62);
 dinfo->irq = sio_ldn_readw(sc, ldn, 0x70);
 dinfo->dma = sio_ldn_readw(sc, ldn, 0x74);
 sio_conf_exit(sc);
 STAILQ_INSERT_TAIL(&sc->devlist, dinfo, link);
}
