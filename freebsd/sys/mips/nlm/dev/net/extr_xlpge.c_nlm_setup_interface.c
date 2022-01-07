
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct nlm_xlpnae_softc {int nucores; TYPE_1__* portcfg; int * cmplx_type; int nblocks; int base; } ;
struct TYPE_2__ {int free_desc_sizes; int ucore_mask; int vlan_pri_en; } ;


 int SGMIIC ;
 int XAUIC ;
 int nlm_config_egress (struct nlm_xlpnae_softc*,int,int,int,int) ;
 int nlm_config_freein_fifo_uniq_cfg (int ,int,int ) ;
 int nlm_config_ucore_iface_mask_cfg (int ,int,int ) ;
 int nlm_config_xaui (int ,int,int,int,int ) ;
 int nlm_configure_sgmii_interface (int ,int,int,int,int ) ;
 int nlm_nae_init_netior (int ,int ) ;
 int nlm_nae_init_ucore (int ,int,int) ;
 int nlm_nae_open_if (int ,int,int ,int,int ) ;
 int nlm_program_flow_cfg (int ,int,int,int) ;

__attribute__((used)) static void
nlm_setup_interface(struct nlm_xlpnae_softc *sc, int nblock,
    int port, uint32_t cur_flow_base, uint32_t flow_mask,
    int max_channels, int context)
{
 uint64_t nae_base = sc->base;
 int mtu = 1536;
 uint32_t ucore_mask;

 if (sc->cmplx_type[nblock] == XAUIC)
  nlm_config_xaui(nae_base, nblock, mtu,
      mtu, sc->portcfg[port].vlan_pri_en);
 nlm_config_freein_fifo_uniq_cfg(nae_base,
     port, sc->portcfg[port].free_desc_sizes);
 nlm_config_ucore_iface_mask_cfg(nae_base,
     port, sc->portcfg[port].ucore_mask);

 nlm_program_flow_cfg(nae_base, port, cur_flow_base, flow_mask);

 if (sc->cmplx_type[nblock] == SGMIIC)
  nlm_configure_sgmii_interface(nae_base, nblock, port, mtu, 0);

 nlm_config_egress(sc, nblock, context, port, max_channels);

 nlm_nae_init_netior(nae_base, sc->nblocks);
 nlm_nae_open_if(nae_base, nblock, sc->cmplx_type[nblock], port,
     sc->portcfg[port].free_desc_sizes);


 ucore_mask = (1 << sc->nucores) - 1;
 nlm_nae_init_ucore(nae_base, port, ucore_mask);
}
