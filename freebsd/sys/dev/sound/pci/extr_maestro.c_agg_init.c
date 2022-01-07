
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct agg_info {int phys; int dev; } ;


 int ACPI_PART_978 ;
 int ACPI_PART_CODEC_CLOCK ;
 int ACPI_PART_DAA ;
 int ACPI_PART_FM ;
 int ACPI_PART_GAME_PORT ;
 int ACPI_PART_GLUE ;
 int ACPI_PART_GPIO ;
 int ACPI_PART_HW_VOL ;
 int ACPI_PART_MIDI ;
 int ACPI_PART_PCI_IF ;
 int ACPI_PART_RINGBUS ;
 int ACPI_PART_SB ;
 int ACPI_PART_SPDIF ;
 int ACPI_PART_WP ;
 int AGG_RD (struct agg_info*,int ,int) ;
 int AGG_WR (struct agg_info*,int ,int,int) ;
 int CONF_LEGACY ;
 int CONF_MAESTRO ;
 int DELAY (int) ;
 int HOSTINT_CTRL_DSOUND_RESET ;
 int HOSTINT_CTRL_HWVOL_ENABLED ;
 int HOSTINT_CTRL_SOFT_RESET ;
 int LEGACY_DISABLED ;
 int MAESTRO_CHIBUS ;
 int MAESTRO_DMA_PCITIMING ;
 int MAESTRO_HWVOL ;
 int MAESTRO_PMC ;
 int MAESTRO_POSTEDWRITE ;
 int MAESTRO_SPDIF ;
 int MAESTRO_SWAP_LR ;


 int PCI_POWERSTATE_D1 ;
 int PCI_POWERSTATE_D2 ;
 int PCI_POWERSTATE_D3 ;
 int PORT_ASSP_CTRL_A ;
 int PORT_ASSP_CTRL_B ;
 int PORT_ASSP_CTRL_C ;
 int PORT_GPIO_DATA ;
 int PORT_GPIO_DIR ;
 int PORT_GPIO_MASK ;
 int PORT_HOSTINT_CTRL ;
 int PORT_RINGBUS_CTRL ;
 int PORT_RINGBUS_CTRL_B ;
 int PORT_WAVCACHE_CTRL ;
 int RINGBUS_CTRL_ACLINK_ENABLED ;
 int RINGBUS_CTRL_RINGBUS_ENABLED ;
 int RINGBUS_CTRL_SPDIF ;
 int RINGBUS_DEST_DAC ;
 int RINGBUS_DEST_DSOUND_IN ;
 int RINGBUS_DEST_STEREO ;
 int RINGBUS_SRC_ADC ;
 int RINGBUS_SRC_DSOUND ;
 int WAVCACHE_BASEADDR_SHIFT ;
 int WAVCACHE_ENABLED ;
 int WAVCACHE_PCMBAR ;
 int WAVCACHE_SGC_32_47 ;
 int WAVCACHE_WTSIZE_2MB ;
 int WPREG_BASE ;
 int WPREG_CRAM_DATA ;
 int WPREG_WAVE_ROMRAM ;
 int WP_WAVE_DRAM_ENABLED ;
 int WP_WAVE_VIRTUAL_ENABLED ;
 int agg_initcodec (struct agg_info*) ;
 int agg_stopclock (struct agg_info*,int ,int ) ;
 int pci_get_subdevice (int ) ;
 int pci_get_subvendor (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;
 int ringbus_setdest (struct agg_info*,int ,int) ;
 int wc_wrreg (struct agg_info*,int,int) ;
 int wp_wrreg (struct agg_info*,int,int) ;

__attribute__((used)) static void
agg_init(struct agg_info* ess)
{
 u_int32_t data;




 data = pci_read_config(ess->dev, CONF_LEGACY, 2);
 data |= LEGACY_DISABLED;
 pci_write_config(ess->dev, CONF_LEGACY, data, 2);





 data = pci_read_config(ess->dev, CONF_MAESTRO, 4);
 data |= MAESTRO_PMC;
 data |= MAESTRO_CHIBUS | MAESTRO_POSTEDWRITE | MAESTRO_DMA_PCITIMING;
 data &= ~MAESTRO_SWAP_LR;
 pci_write_config(ess->dev, CONF_MAESTRO, data, 4);



 if (data & MAESTRO_SPDIF)
  agg_stopclock(ess, ACPI_PART_SPDIF, PCI_POWERSTATE_D2);
 else
  agg_stopclock(ess, ACPI_PART_SPDIF, PCI_POWERSTATE_D1);
 if (data & MAESTRO_HWVOL)
  agg_stopclock(ess, ACPI_PART_HW_VOL, PCI_POWERSTATE_D3);
 else
  agg_stopclock(ess, ACPI_PART_HW_VOL, PCI_POWERSTATE_D1);


 agg_stopclock(ess, ACPI_PART_978, PCI_POWERSTATE_D1);
 agg_stopclock(ess, ACPI_PART_DAA, PCI_POWERSTATE_D1);
 agg_stopclock(ess, ACPI_PART_GPIO, PCI_POWERSTATE_D1);
 agg_stopclock(ess, ACPI_PART_SB, PCI_POWERSTATE_D1);
 agg_stopclock(ess, ACPI_PART_FM, PCI_POWERSTATE_D1);
 agg_stopclock(ess, ACPI_PART_MIDI, PCI_POWERSTATE_D1);
 agg_stopclock(ess, ACPI_PART_GAME_PORT, PCI_POWERSTATE_D1);


 agg_stopclock(ess, ACPI_PART_WP, PCI_POWERSTATE_D2);


 agg_stopclock(ess, ACPI_PART_CODEC_CLOCK, PCI_POWERSTATE_D3);
 agg_stopclock(ess, ACPI_PART_GLUE, PCI_POWERSTATE_D3);
 agg_stopclock(ess, ACPI_PART_PCI_IF, PCI_POWERSTATE_D3);
 agg_stopclock(ess, ACPI_PART_RINGBUS, PCI_POWERSTATE_D3);


 AGG_WR(ess, PORT_HOSTINT_CTRL, HOSTINT_CTRL_SOFT_RESET, 2);
 DELAY(100);
 AGG_WR(ess, PORT_HOSTINT_CTRL, 0, 2);
 DELAY(100);
 AGG_WR(ess, PORT_HOSTINT_CTRL, HOSTINT_CTRL_DSOUND_RESET, 2);
 DELAY(100);
 AGG_WR(ess, PORT_HOSTINT_CTRL, 0, 2);
 DELAY(100);


 if (data & MAESTRO_HWVOL)
  AGG_WR(ess, PORT_HOSTINT_CTRL,HOSTINT_CTRL_HWVOL_ENABLED, 2);




 wp_wrreg(ess, WPREG_WAVE_ROMRAM,
     WP_WAVE_VIRTUAL_ENABLED | WP_WAVE_DRAM_ENABLED);
 wp_wrreg(ess, WPREG_CRAM_DATA, 0);

 AGG_WR(ess, PORT_WAVCACHE_CTRL,
        WAVCACHE_ENABLED | WAVCACHE_WTSIZE_2MB | WAVCACHE_SGC_32_47, 2);

 for (data = WAVCACHE_PCMBAR; data < WAVCACHE_PCMBAR + 4; data++)
  wc_wrreg(ess, data, ess->phys >> WAVCACHE_BASEADDR_SHIFT);


 agg_initcodec(ess);
 AGG_WR(ess, PORT_RINGBUS_CTRL,
        RINGBUS_CTRL_RINGBUS_ENABLED | RINGBUS_CTRL_ACLINK_ENABLED, 4);

 wp_wrreg(ess, 0x08, 0xB004);
 wp_wrreg(ess, 0x09, 0x001B);
 wp_wrreg(ess, 0x0A, 0x8000);
 wp_wrreg(ess, 0x0B, 0x3F37);
 wp_wrreg(ess, WPREG_BASE, 0x8598);
 wp_wrreg(ess, WPREG_BASE + 1, 0x7632);
 ringbus_setdest(ess, RINGBUS_SRC_ADC,
     RINGBUS_DEST_STEREO | RINGBUS_DEST_DSOUND_IN);
 ringbus_setdest(ess, RINGBUS_SRC_DSOUND,
     RINGBUS_DEST_STEREO | RINGBUS_DEST_DAC);


 if (pci_read_config(ess->dev, CONF_MAESTRO, 4) & MAESTRO_SPDIF)

  AGG_WR(ess, PORT_RINGBUS_CTRL_B, RINGBUS_CTRL_SPDIF |
         AGG_RD(ess, PORT_RINGBUS_CTRL_B, 1), 1);


 AGG_WR(ess, PORT_ASSP_CTRL_B, 0x00, 1);
 AGG_WR(ess, PORT_ASSP_CTRL_A, 0x03, 1);
 AGG_WR(ess, PORT_ASSP_CTRL_C, 0x00, 1);





 switch (pci_get_subvendor(ess->dev)
     | (pci_get_subdevice(ess->dev) << 16)) {
 case 129:
 case 128:


  AGG_WR(ess, PORT_GPIO_MASK, 0x9ff, 2);
  AGG_WR(ess, PORT_GPIO_DIR,
         AGG_RD(ess, PORT_GPIO_DIR, 2) | 0x600, 2);
  AGG_WR(ess, PORT_GPIO_DATA, 0x200, 2);
  break;
 }
}
