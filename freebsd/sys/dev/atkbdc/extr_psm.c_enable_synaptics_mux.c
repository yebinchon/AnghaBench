
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psm_softc {int muxport; int kbdc; } ;
typedef enum probearg { ____Placeholder_probearg } probearg ;
typedef int KBDC ;


 int FALSE ;
 int KBDC_AUX_MUX_NUM_PORTS ;
 int LOG_DEBUG ;
 int PROBE ;
 int VLOG (int,int ) ;
 scalar_t__ disable_aux_dev (int ) ;
 int disable_aux_mux (int ) ;
 scalar_t__ enable_aux_dev (int ) ;
 int enable_aux_mux (int ) ;
 int enable_synaptics (struct psm_softc*,int) ;
 int printf (char*,int,int,int) ;
 int set_active_aux_mux_port (int ,int) ;
 int verbose ;

__attribute__((used)) static int
enable_synaptics_mux(struct psm_softc *sc, enum probearg arg)
{
 KBDC kbdc = sc->kbdc;
 int port, version;
 int probe = FALSE;
 int active_ports_count = 0;
 int active_ports_mask = 0;

 version = enable_aux_mux(kbdc);
 if (version == -1)
  return (FALSE);

 for (port = 0; port < KBDC_AUX_MUX_NUM_PORTS; port++) {
  VLOG(3, (LOG_DEBUG, "aux_mux: ping port %d\n", port));
  set_active_aux_mux_port(kbdc, port);
  if (enable_aux_dev(kbdc) && disable_aux_dev(kbdc)) {
   active_ports_count++;
   active_ports_mask |= 1 << port;
  }
 }

 if (verbose >= 2)
  printf("Active Multiplexing PS/2 controller v%d.%d with %d "
      "active port(s)\n", version >> 4 & 0x0f, version & 0x0f,
      active_ports_count);


 if (active_ports_count >= 2) {
  for (port = 0; port < KBDC_AUX_MUX_NUM_PORTS; port++) {
   if ((active_ports_mask & 1 << port) == 0)
    continue;
   VLOG(3, (LOG_DEBUG, "aux_mux: probe port %d\n", port));
   set_active_aux_mux_port(kbdc, port);
   probe = enable_synaptics(sc, arg);
   if (probe) {
    if (arg == PROBE)
     sc->muxport = port;
    break;
   }
  }
 }


 disable_aux_mux(kbdc);

 return (probe);
}
