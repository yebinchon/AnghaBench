
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct xlpge_tx_desc {int dummy; } ;
struct xlp_nae_ivars {int blockmask; int nblocks; TYPE_2__* block_ivars; int ieee_1588_en; int prepad_size; int prepad_en; int hw_parser_en; int flow_crc_poly; int freq; int sgmiimask; int xauimask; int ilmask; int node; } ;
struct nlm_xlpnae_softc {int blockmask; int nblocks; int ncontexts; int* portmask; int max_ports; int total_num_ports; int per_port_num_flows; int poe_base; int poedv_base; TYPE_4__* portcfg; int base; int node; scalar_t__ total_free_desc; int * cmplx_type; int nucores; int ieee_1588_en; int prepad_size; int prepad_en; int hw_parser_en; int flow_crc_poly; int freq; int sgmiimask; int xauimask; int ilmask; int xlpnae_dev; } ;
typedef int device_t ;
struct TYPE_13__ {scalar_t__ type; int num_channels; int txq; int rxfreeq; int block; int port; } ;
struct TYPE_12__ {TYPE_1__* nodes; } ;
struct TYPE_11__ {int portmask; int * port_ivars; int type; } ;
struct TYPE_10__ {struct xlp_nae_ivars nae_ivars; } ;


 int NAE_CACHELINE_SIZE ;
 int NUM_WORDS_PER_DV ;
 int POE_DISTR_EN ;
 int PORTS_PER_CMPLX ;
 scalar_t__ UNKNOWN ;
 int XLPGE_RX_VC ;
 int XLP_PCI_DEVINFO_REG5 ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int* cntx2port ;
 int device_add_child (int ,char*,int) ;
 struct nlm_xlpnae_softc* device_get_softc (int ) ;
 int device_set_desc_copy (int ,char*) ;
 int device_set_ivars (int ,int *) ;
 TYPE_4__* nae_port_config ;
 int nl_tx_desc_zone ;
 int nlm_calc_poe_distvec (int,int ,int ,int ,int,int*) ;
 int nlm_get_nae_pcibase (int ) ;
 int nlm_get_nae_regbase (int ) ;
 int nlm_get_poe_pcibase (int ) ;
 int nlm_get_poe_regbase (int ) ;
 int nlm_get_poedv_regbase (int ) ;
 int nlm_num_uengines (int ) ;
 int nlm_poe_max_flows (int ) ;
 int nlm_program_nae_parser_seq_fifo (int ,int,TYPE_4__*) ;
 int nlm_qidstart (int ) ;
 int nlm_qnum (int ) ;
 int nlm_read_reg (int ,int ) ;
 int nlm_setup_freein_fifo_cfg (int ,TYPE_4__*) ;
 int nlm_setup_iface_fifo_cfg (int ,int,TYPE_4__*) ;
 int nlm_setup_portcfg (struct nlm_xlpnae_softc*,struct xlp_nae_ivars*,int,int) ;
 int nlm_setup_rx_base_config (int ,int,TYPE_4__*) ;
 int nlm_setup_rx_buf_config (int ,int,TYPE_4__*) ;
 int nlm_write_poe_distvec (int ,int ,int*) ;
 int nlm_write_poe_reg (int ,int ,int) ;
 int nlm_xlpge_msgring_handler ;
 int nlm_xlpnae_init (int,struct nlm_xlpnae_softc*) ;
 int nlm_xlpnae_print_frin_desc_carving (struct nlm_xlpnae_softc*) ;
 int panic (char*) ;
 int pci_get_slot (int ) ;
 scalar_t__ register_msgring_handler (int,int,int ,struct nlm_xlpnae_softc*) ;
 int sprintf (char*,char*,int,int) ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 TYPE_3__ xlp_board_info ;

__attribute__((used)) static int
nlm_xlpnae_attach(device_t dev)
{
 struct xlp_nae_ivars *nae_ivars;
 struct nlm_xlpnae_softc *sc;
 device_t tmpd;
 uint32_t dv[NUM_WORDS_PER_DV];
 int port, i, j, nchan, nblock, node, qstart, qnum;
 int offset, context, txq_base, rxvcbase;
 uint64_t poe_pcibase, nae_pcibase;

 node = pci_get_slot(dev) / 8;
 nae_ivars = &xlp_board_info.nodes[node].nae_ivars;

 sc = device_get_softc(dev);
 sc->xlpnae_dev = dev;
 sc->node = nae_ivars->node;
 sc->base = nlm_get_nae_regbase(sc->node);
 sc->poe_base = nlm_get_poe_regbase(sc->node);
 sc->poedv_base = nlm_get_poedv_regbase(sc->node);
 sc->portcfg = nae_port_config;
 sc->blockmask = nae_ivars->blockmask;
 sc->ilmask = nae_ivars->ilmask;
 sc->xauimask = nae_ivars->xauimask;
 sc->sgmiimask = nae_ivars->sgmiimask;
 sc->nblocks = nae_ivars->nblocks;
 sc->freq = nae_ivars->freq;


 sc->flow_crc_poly = nae_ivars->flow_crc_poly;

 sc->hw_parser_en = nae_ivars->hw_parser_en;
 sc->prepad_en = nae_ivars->prepad_en;
 sc->prepad_size = nae_ivars->prepad_size;
 sc->ieee_1588_en = nae_ivars->ieee_1588_en;

 nae_pcibase = nlm_get_nae_pcibase(sc->node);
 sc->ncontexts = nlm_read_reg(nae_pcibase, XLP_PCI_DEVINFO_REG5);
 sc->nucores = nlm_num_uengines(nae_pcibase);

 for (nblock = 0; nblock < sc->nblocks; nblock++) {
  sc->cmplx_type[nblock] = nae_ivars->block_ivars[nblock].type;
  sc->portmask[nblock] = nae_ivars->block_ivars[nblock].portmask;
 }

 for (i = 0; i < sc->ncontexts; i++)
  cntx2port[i] = 18;

 if (sc->nblocks == 5)
  sc->max_ports = 18;
 else
  sc->max_ports = sc->nblocks * PORTS_PER_CMPLX;

 for (i = 0; i < sc->max_ports; i++)
  sc->portcfg[i].type = UNKNOWN;




 sc->total_free_desc = 0;
 sc->total_num_ports = 0;
 port = 0;
 context = 0;
 txq_base = nlm_qidstart(nae_pcibase);
 rxvcbase = txq_base + sc->ncontexts;
 for (i = 0; i < sc->nblocks; i++) {
  uint32_t portmask;

  if ((nae_ivars->blockmask & (1 << i)) == 0) {
   port += 4;
   continue;
  }
  portmask = nae_ivars->block_ivars[i].portmask;
  for (j = 0; j < PORTS_PER_CMPLX; j++, port++) {
   if ((portmask & (1 << j)) == 0)
    continue;
   nlm_setup_portcfg(sc, nae_ivars, i, port);
   nchan = sc->portcfg[port].num_channels;
   for (offset = 0; offset < nchan; offset++)
    cntx2port[context + offset] = port;
   sc->portcfg[port].txq = txq_base + context;
   sc->portcfg[port].rxfreeq = rxvcbase + port;
   context += nchan;
  }
 }

 poe_pcibase = nlm_get_poe_pcibase(sc->node);
 sc->per_port_num_flows =
     nlm_poe_max_flows(poe_pcibase) / sc->total_num_ports;


 nl_tx_desc_zone = uma_zcreate("NL Tx Desc",
     sizeof(struct xlpge_tx_desc), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     NAE_CACHELINE_SIZE, 0);




 qstart = nlm_qidstart(nae_pcibase);
 qnum = nlm_qnum(nae_pcibase);
 if (register_msgring_handler(qstart, qstart + qnum - 1,
     nlm_xlpge_msgring_handler, sc)) {
  panic("Couldn't register NAE msgring handler\n");
 }




 qstart = nlm_qidstart(poe_pcibase);
 qnum = nlm_qnum(poe_pcibase);
 if (register_msgring_handler(qstart, qstart + qnum - 1,
     nlm_xlpge_msgring_handler, sc)) {
  panic("Couldn't register POE msgring handler\n");
 }

 nlm_xlpnae_init(node, sc);

 for (i = 0; i < sc->max_ports; i++) {
  char desc[32];
  int block, port;

  if (sc->portcfg[i].type == UNKNOWN)
   continue;
  block = sc->portcfg[i].block;
  port = sc->portcfg[i].port;
  tmpd = device_add_child(dev, "xlpge", i);
  device_set_ivars(tmpd,
      &(nae_ivars->block_ivars[block].port_ivars[port]));
  sprintf(desc, "XLP NAE Port %d,%d", block, port);
  device_set_desc_copy(tmpd, desc);
 }
 nlm_setup_iface_fifo_cfg(sc->base, sc->max_ports, sc->portcfg);
 nlm_setup_rx_base_config(sc->base, sc->max_ports, sc->portcfg);
 nlm_setup_rx_buf_config(sc->base, sc->max_ports, sc->portcfg);
 nlm_setup_freein_fifo_cfg(sc->base, sc->portcfg);
 nlm_program_nae_parser_seq_fifo(sc->base, sc->max_ports, sc->portcfg);

 nlm_xlpnae_print_frin_desc_carving(sc);
 bus_generic_probe(dev);
 bus_generic_attach(dev);





 nlm_write_poe_reg(sc->poe_base, POE_DISTR_EN, 0);
 nlm_calc_poe_distvec(0x1, 0, 0, 0, 0x1 << XLPGE_RX_VC, dv);
 nlm_write_poe_distvec(sc->poedv_base, 0, dv);
 nlm_write_poe_reg(sc->poe_base, POE_DISTR_EN, 1);

 return (0);
}
