
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct nlm_xlpnae_softc {int nucores; int sgmiimask; int xauimask; int portcfg; int base; scalar_t__ ieee_1588_en; int prepad_size; scalar_t__ prepad_en; scalar_t__ hw_parser_en; int poedv_base; int poe_base; int max_ports; int flow_crc_poly; int ncontexts; int freq; int nblocks; } ;


 int DFS_DEVICE_NAE ;
 int MAX_POE_CLASSES ;
 int NAE_LANE_CFG_SOFTRESET ;
 int NAE_RX_CONFIG ;
 int NAE_TX_CONFIG ;
 int nlm_config_poe (int ,int ) ;
 int nlm_deflate_frin_fifo_carving (int ,int ) ;
 int nlm_enable_hardware_parser (int ) ;
 scalar_t__ nlm_is_xlp8xx_ax () ;
 int nlm_mdio_reset_all (int ) ;
 int nlm_nae_flush_free_fifo (int ,int ) ;
 int nlm_prepad_enable (int ,int ) ;
 int nlm_read_nae_reg (int ,int ) ;
 int nlm_reset_nae (int) ;
 int nlm_set_device_frequency (int,int ,int ) ;
 int nlm_setup_1588_timer (int ,int ) ;
 int nlm_setup_flow_crc_poly (int ,int ) ;
 int nlm_setup_interfaces (struct nlm_xlpnae_softc*) ;
 int nlm_setup_poe_class_config (int ,int ,int ,int ) ;
 int nlm_setup_rx_cal_cfg (int ,int ,int ) ;
 int nlm_setup_tx_cal_cfg (int ,int ,int ) ;
 int nlm_setup_vfbid_mapping (int ) ;
 int nlm_sgmii_pcs_init (int ,int) ;
 int nlm_ucore_load_all (int ,int,int) ;
 int nlm_write_nae_reg (int ,int ,int) ;
 int nlm_xaui_pcs_init (int ,int) ;
 int poe_cl_tbl ;
 int printf (char*,int) ;

__attribute__((used)) static void
nlm_xlpnae_init(int node, struct nlm_xlpnae_softc *sc)
{
 uint64_t nae_base;
 uint32_t ucoremask = 0;
 uint32_t val;
 int i;

 nae_base = sc->base;

 nlm_nae_flush_free_fifo(nae_base, sc->nblocks);
 nlm_deflate_frin_fifo_carving(nae_base, sc->max_ports);
 nlm_reset_nae(node);

 for (i = 0; i < sc->nucores; i++)
  ucoremask |= (0x1 << i);
 printf("Loading 0x%x ucores with microcode\n", ucoremask);
 nlm_ucore_load_all(nae_base, ucoremask, 1);

 val = nlm_set_device_frequency(node, DFS_DEVICE_NAE, sc->freq);
 printf("Setup NAE frequency to %dMHz\n", val);

 nlm_mdio_reset_all(nae_base);

 printf("Initialze SGMII PCS for blocks 0x%x\n", sc->sgmiimask);
 nlm_sgmii_pcs_init(nae_base, sc->sgmiimask);

 printf("Initialze XAUI PCS for blocks 0x%x\n", sc->xauimask);
 nlm_xaui_pcs_init(nae_base, sc->xauimask);


 nlm_write_nae_reg(nae_base, NAE_LANE_CFG_SOFTRESET, 0x0);


 val = nlm_read_nae_reg(nae_base, NAE_RX_CONFIG);
 val &= 0xfffffffe;
 nlm_write_nae_reg(nae_base, NAE_RX_CONFIG, val);

 if (nlm_is_xlp8xx_ax() == 0) {
  val = nlm_read_nae_reg(nae_base, NAE_TX_CONFIG);
  val &= ~(1 << 3);
  nlm_write_nae_reg(nae_base, NAE_TX_CONFIG, val);
 }

 nlm_setup_poe_class_config(nae_base, MAX_POE_CLASSES,
     sc->ncontexts, poe_cl_tbl);

 nlm_setup_vfbid_mapping(nae_base);

 nlm_setup_flow_crc_poly(nae_base, sc->flow_crc_poly);

 nlm_setup_rx_cal_cfg(nae_base, sc->max_ports, sc->portcfg);

 if (!nlm_is_xlp8xx_ax())
  nlm_setup_tx_cal_cfg(nae_base, sc->max_ports, sc->portcfg);

 nlm_setup_interfaces(sc);
 nlm_config_poe(sc->poe_base, sc->poedv_base);

 if (sc->hw_parser_en)
  nlm_enable_hardware_parser(nae_base);

 if (sc->prepad_en)
  nlm_prepad_enable(nae_base, sc->prepad_size);

 if (sc->ieee_1588_en)
  nlm_setup_1588_timer(sc->base, sc->portcfg);
}
