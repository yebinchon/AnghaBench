
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csa_midi_softc {int mtx; int * io; int io_rid; int mpu; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct csa_midi_softc* device_get_softc (int ) ;
 int mpu401_uninit (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
midicsa_detach(device_t dev)
{
 struct csa_midi_softc *scp;
 int rc = 0;

 scp = device_get_softc(dev);
 rc = mpu401_uninit(scp->mpu);
 if (rc)
  return (rc);
 if (scp->io != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY, scp->io_rid,
      scp->io);
  scp->io = ((void*)0);
 }
 mtx_destroy(&scp->mtx);
 return (rc);
}
