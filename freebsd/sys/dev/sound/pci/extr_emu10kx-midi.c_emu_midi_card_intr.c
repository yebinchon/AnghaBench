
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct emu_midi_softc {int dev; int (* mpu_intr ) (int ) ;int mpu; } ;


 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int ) ;
 int emu_mread (void*,struct emu_midi_softc*,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static uint32_t
emu_midi_card_intr(void *p, uint32_t intr_status)
{
 struct emu_midi_softc *sc = (struct emu_midi_softc *)p;
 if (sc->mpu_intr)
  (sc->mpu_intr) (sc->mpu);
 if (sc->mpu_intr == ((void*)0)) {


  if (bootverbose)
   device_printf(sc->dev, "midi interrupt %08x without interrupt handler, force mread!\n", intr_status);
  (void)emu_mread((void *)(((void*)0)), sc, 0);
 }
 return (intr_status);
}
