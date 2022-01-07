
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ capExtended; } ;
struct TYPE_3__ {scalar_t__ model; } ;
struct psm_softc {TYPE_2__ synhw; TYPE_1__ hw; } ;


 scalar_t__ MOUSE_MODEL_SYNAPTICS ;
 scalar_t__ tap_enabled ;

__attribute__((used)) static int
synaptics_preferred_mode(struct psm_softc *sc) {
 int mode_byte;


 if (sc->hw.model != MOUSE_MODEL_SYNAPTICS) {
  if (tap_enabled == 0)





   return (0x04);
  else





   return (0x00);
 }

 mode_byte = 0xc4;


 if (sc->synhw.capExtended)
  mode_byte |= 1;

 return mode_byte;
}
