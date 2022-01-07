
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct nlm_xlpnae_softc {int max_ports; TYPE_1__* portcfg; scalar_t__ per_port_num_flows; int total_num_ports; int base; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ num_channels; int block; } ;


 scalar_t__ UNKNOWN ;
 scalar_t__ nlm_get_flow_mask (int ) ;
 int nlm_setup_interface (struct nlm_xlpnae_softc*,int ,int,scalar_t__,scalar_t__,int,int) ;
 int xlpnae_get_maxchannels (struct nlm_xlpnae_softc*) ;

__attribute__((used)) static void
nlm_setup_interfaces(struct nlm_xlpnae_softc *sc)
{
 uint64_t nae_base;
 uint32_t cur_slot, cur_slot_base;
 uint32_t cur_flow_base, port, flow_mask;
 int max_channels;
 int i, context;

 cur_slot = 0;
 cur_slot_base = 0;
 cur_flow_base = 0;
 nae_base = sc->base;
 flow_mask = nlm_get_flow_mask(sc->total_num_ports);

 max_channels = xlpnae_get_maxchannels(sc);

 port = 0;
 context = 0;
 for (i = 0; i < sc->max_ports; i++) {
  if (sc->portcfg[i].type == UNKNOWN)
   continue;
  nlm_setup_interface(sc, sc->portcfg[i].block, i, cur_flow_base,
      flow_mask, max_channels, context);
  cur_flow_base += sc->per_port_num_flows;
  context += sc->portcfg[i].num_channels;
 }
}
