
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_midi_softc {int is_emu10k1; } ;
typedef int device_t ;


 uintptr_t BUS_READ_IVAR (int ,int ,int ,uintptr_t*) ;
 int EMU_VAR_ISEMU10K1 ;
 int ENXIO ;
 uintptr_t SCF_MIDI ;
 int bzero (struct emu_midi_softc*,int) ;
 int device_get_parent (int ) ;
 struct emu_midi_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
emu_midi_probe(device_t dev)
{
 struct emu_midi_softc *scp;
 uintptr_t func, r, is_emu10k1;

 r = BUS_READ_IVAR(device_get_parent(dev), dev, 0, &func);
 if (func != SCF_MIDI)
  return (ENXIO);

 scp = device_get_softc(dev);
 bzero(scp, sizeof(*scp));
 r = BUS_READ_IVAR(device_get_parent(dev), dev, EMU_VAR_ISEMU10K1, &is_emu10k1);
 scp->is_emu10k1 = is_emu10k1 ? 1 : 0;

 device_set_desc(dev, "EMU10Kx MIDI Interface");
 return (0);
}
