
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_midi_softc {int mtx; int ihandle; int card; int mpu; } ;
typedef int device_t ;


 struct emu_midi_softc* device_get_softc (int ) ;
 int emu_intr_unregister (int ,int ) ;
 int mpu401_uninit (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
emu_midi_detach(device_t dev)
{
 struct emu_midi_softc *scp;

 scp = device_get_softc(dev);
 mpu401_uninit(scp->mpu);
 emu_intr_unregister(scp->card, scp->ihandle);
 mtx_destroy(&scp->mtx);
 return (0);
}
