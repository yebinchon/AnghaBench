
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct xlp_port_ivars {scalar_t__ free_desc_sizes; int ieee1588_tmr3; int ieee1588_tmr2; int ieee1588_tmr1; int ieee1588_ptpoff; int ieee1588_userval; int ieee1588_inc_num; int ieee1588_inc_den; int ieee1588_inc_intg; int stg2_ms_credit; int stg2_frout_credit; int stg2_eh_credit; int stg1_2_credit; int max_pmem_offset; int max_ms_offset; int max_frout_offset; int max_eh_offset; int max_stg2_offset; int pktlen_fifo_size; int pkt_fifo_size; int ms_fifo_size; int frout_fifo_size; int eh_fifo_size; int stg2_fifo_size; int pseq_fifo_size; int tx_slots_reqd; int rx_slots_reqd; int rxbuf_size; int iface_fifo_size; int num_free_descs; int vlan_pri_en; int num_channels; int loopback_mode; int phy_addr; int mdio_bus; int type; int port; int block; int node; } ;
struct xlp_nae_ivars {struct xlp_block_ivars* block_ivars; } ;
struct xlp_block_ivars {struct xlp_port_ivars* port_ivars; } ;
struct nlm_xlpnae_softc {int nucores; int total_num_ports; TYPE_1__* portcfg; int total_free_desc; } ;
struct TYPE_2__ {int free_desc_sizes; int ucore_mask; int ieee1588_tmr3; int ieee1588_tmr2; int ieee1588_tmr1; int ieee1588_ptpoff; int ieee1588_userval; int ieee1588_inc_num; int ieee1588_inc_den; int ieee1588_inc_intg; int stg2_ms_credit; int stg2_frout_credit; int stg2_eh_credit; int stg1_2_credit; int max_pmem_offset; int max_ms_offset; int max_frout_offset; int max_eh_offset; int max_stg2_offset; int pktlen_fifo_size; int pkt_fifo_size; int ms_fifo_size; int frout_fifo_size; int eh_fifo_size; int stg2_fifo_size; int pseq_fifo_size; int tx_slots_reqd; int rx_slots_reqd; int rxbuf_size; int iface_fifo_size; int num_free_descs; int vlan_pri_en; int num_channels; int loopback_mode; int phy_addr; int mdio_bus; int type; int port; int block; int node; } ;


 scalar_t__ MCLBYTES ;
 int printf (char*,int,int,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
nlm_setup_portcfg(struct nlm_xlpnae_softc *sc, struct xlp_nae_ivars *naep,
    int block, int port)
{
 int i;
 uint32_t ucore_mask = 0;
 struct xlp_block_ivars *bp;
 struct xlp_port_ivars *p;

 bp = &(naep->block_ivars[block]);
 p = &(bp->port_ivars[port & 0x3]);

 sc->portcfg[port].node = p->node;
 sc->portcfg[port].block = p->block;
 sc->portcfg[port].port = p->port;
 sc->portcfg[port].type = p->type;
 sc->portcfg[port].mdio_bus = p->mdio_bus;
 sc->portcfg[port].phy_addr = p->phy_addr;
 sc->portcfg[port].loopback_mode = p->loopback_mode;
 sc->portcfg[port].num_channels = p->num_channels;
 if (p->free_desc_sizes != MCLBYTES) {
  printf("[%d, %d] Error: free_desc_sizes %d != %d\n",
      block, port, p->free_desc_sizes, MCLBYTES);
  return;
 }
 sc->portcfg[port].free_desc_sizes = p->free_desc_sizes;
 for (i = 0; i < sc->nucores; i++)
  ucore_mask |= (0x1 << i);
 sc->portcfg[port].ucore_mask = ucore_mask;
 sc->portcfg[port].vlan_pri_en = p->vlan_pri_en;
 sc->portcfg[port].num_free_descs = p->num_free_descs;
 sc->portcfg[port].iface_fifo_size = p->iface_fifo_size;
 sc->portcfg[port].rxbuf_size = p->rxbuf_size;
 sc->portcfg[port].rx_slots_reqd = p->rx_slots_reqd;
 sc->portcfg[port].tx_slots_reqd = p->tx_slots_reqd;
 sc->portcfg[port].pseq_fifo_size = p->pseq_fifo_size;

 sc->portcfg[port].stg2_fifo_size = p->stg2_fifo_size;
 sc->portcfg[port].eh_fifo_size = p->eh_fifo_size;
 sc->portcfg[port].frout_fifo_size = p->frout_fifo_size;
 sc->portcfg[port].ms_fifo_size = p->ms_fifo_size;
 sc->portcfg[port].pkt_fifo_size = p->pkt_fifo_size;
 sc->portcfg[port].pktlen_fifo_size = p->pktlen_fifo_size;
 sc->portcfg[port].max_stg2_offset = p->max_stg2_offset;
 sc->portcfg[port].max_eh_offset = p->max_eh_offset;
 sc->portcfg[port].max_frout_offset = p->max_frout_offset;
 sc->portcfg[port].max_ms_offset = p->max_ms_offset;
 sc->portcfg[port].max_pmem_offset = p->max_pmem_offset;
 sc->portcfg[port].stg1_2_credit = p->stg1_2_credit;
 sc->portcfg[port].stg2_eh_credit = p->stg2_eh_credit;
 sc->portcfg[port].stg2_frout_credit = p->stg2_frout_credit;
 sc->portcfg[port].stg2_ms_credit = p->stg2_ms_credit;
 sc->portcfg[port].ieee1588_inc_intg = p->ieee1588_inc_intg;
 sc->portcfg[port].ieee1588_inc_den = p->ieee1588_inc_den;
 sc->portcfg[port].ieee1588_inc_num = p->ieee1588_inc_num;
 sc->portcfg[port].ieee1588_userval = p->ieee1588_userval;
 sc->portcfg[port].ieee1588_ptpoff = p->ieee1588_ptpoff;
 sc->portcfg[port].ieee1588_tmr1 = p->ieee1588_tmr1;
 sc->portcfg[port].ieee1588_tmr2 = p->ieee1588_tmr2;
 sc->portcfg[port].ieee1588_tmr3 = p->ieee1588_tmr3;

 sc->total_free_desc += sc->portcfg[port].free_desc_sizes;
 sc->total_num_ports++;
}
