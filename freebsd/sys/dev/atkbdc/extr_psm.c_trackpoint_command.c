
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ capPassthrough; } ;
struct psm_softc {TYPE_1__ synhw; int kbdc; } ;


 int EIO ;
 scalar_t__ PSM_ACK ;
 int nitems (int const*) ;
 scalar_t__ send_aux_command (int ,int const) ;
 int synaptics_passthrough_off (struct psm_softc*) ;
 int synaptics_passthrough_on (struct psm_softc*) ;

__attribute__((used)) static int
trackpoint_command(struct psm_softc *sc, int cmd, int loc, int val)
{
 const int seq[] = { 0xe2, cmd, loc, val };
 int i;

 if (sc->synhw.capPassthrough)
  synaptics_passthrough_on(sc);

 for (i = 0; i < nitems(seq); i++) {
  if (sc->synhw.capPassthrough &&
      (seq[i] == 0xff || seq[i] == 0xe7))
   if (send_aux_command(sc->kbdc, 0xe7) != PSM_ACK) {
    synaptics_passthrough_off(sc);
    return (EIO);
   }
  if (send_aux_command(sc->kbdc, seq[i]) != PSM_ACK) {
   if (sc->synhw.capPassthrough)
    synaptics_passthrough_off(sc);
   return (EIO);
  }
 }

 if (sc->synhw.capPassthrough)
  synaptics_passthrough_off(sc);

 return (0);
}
