
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ capPassthrough; } ;
struct TYPE_3__ {int hwid; int buttons; } ;
struct psm_softc {int tphw; TYPE_2__ synhw; TYPE_1__ hw; int kbdc; } ;
typedef enum probearg { ____Placeholder_probearg } probearg ;
typedef int KBDC ;


 int FALSE ;
 int PROBE ;
 scalar_t__ PSM_ACK ;
 int TRUE ;
 int read_aux_data (int ) ;
 scalar_t__ send_aux_command (int ,int) ;
 int set_trackpoint_parameters (struct psm_softc*) ;
 int synaptics_passthrough_off (struct psm_softc*) ;
 int synaptics_passthrough_on (struct psm_softc*) ;
 int trackpoint_support ;
 int trackpoint_sysctl_create_tree (struct psm_softc*) ;

__attribute__((used)) static int
enable_trackpoint(struct psm_softc *sc, enum probearg arg)
{
 KBDC kbdc = sc->kbdc;
 int id;
 if (sc->synhw.capPassthrough)
  synaptics_passthrough_on(sc);

 if (send_aux_command(kbdc, 0xe1) != PSM_ACK ||
     read_aux_data(kbdc) != 0x01)
  goto no_trackpoint;
 id = read_aux_data(kbdc);
 if (id < 0x01)
  goto no_trackpoint;
 if (arg == PROBE)
  sc->tphw = id;
 if (!trackpoint_support)
  goto no_trackpoint;

 if (sc->synhw.capPassthrough)
  synaptics_passthrough_off(sc);

 if (arg == PROBE) {
  trackpoint_sysctl_create_tree(sc);




  if (!sc->synhw.capPassthrough) {
   sc->hw.hwid = id;
   sc->hw.buttons = 3;
  }
 }

 set_trackpoint_parameters(sc);

 return (TRUE);

no_trackpoint:
 if (sc->synhw.capPassthrough)
  synaptics_passthrough_off(sc);

 return (FALSE);
}
