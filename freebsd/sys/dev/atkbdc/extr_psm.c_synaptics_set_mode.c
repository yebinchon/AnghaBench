
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ model; } ;
struct TYPE_3__ {scalar_t__ capReportsV; scalar_t__ capAdvancedGestures; } ;
struct psm_softc {int kbdc; TYPE_2__ hw; TYPE_1__ synhw; } ;


 scalar_t__ MOUSE_MODEL_SYNAPTICS ;
 int SYNAPTICS_READ_MODEL_ID ;
 int mouse_ext_command (int ,int) ;
 int set_mouse_sampling_rate (int ,int) ;

__attribute__((used)) static void
synaptics_set_mode(struct psm_softc *sc, int mode_byte) {
 mouse_ext_command(sc->kbdc, mode_byte);


 set_mouse_sampling_rate(sc->kbdc, 20);





 if ((sc->synhw.capAdvancedGestures || sc->synhw.capReportsV) &&
     sc->hw.model == MOUSE_MODEL_SYNAPTICS && !(mode_byte & (1 << 5))) {
  mouse_ext_command(sc->kbdc, SYNAPTICS_READ_MODEL_ID);
  set_mouse_sampling_rate(sc->kbdc, 0xc8);
 }
}
