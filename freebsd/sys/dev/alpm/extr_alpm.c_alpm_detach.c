
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alpm_softc {scalar_t__ res; int lock; int * smbus; } ;
typedef int device_t ;


 int SMBBA ;
 int SYS_RES_IOPORT ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int device_delete_child (int ,int *) ;
 struct alpm_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
alpm_detach(device_t dev)
{
 struct alpm_softc *alpm = device_get_softc(dev);

 if (alpm->smbus) {
  device_delete_child(dev, alpm->smbus);
  alpm->smbus = ((void*)0);
 }
 mtx_destroy(&alpm->lock);

 if (alpm->res)
  bus_release_resource(dev, SYS_RES_IOPORT, SMBBA, alpm->res);

 return (0);
}
