
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct es_info {int sctrl; int ctrl; int dev; scalar_t__ num; int escfg; } ;


 int CT4730_PCI_ID ;
 int CT5880REV_CT5880_C ;
 int CT5880REV_CT5880_D ;
 int CT5880REV_CT5880_E ;
 int CT5880_PCI_ID ;
 int CTRL_JYSTK_EN ;
 int DELAY (int) ;
 int ES1370_REG_CONTROL ;
 int ES1370_REG_SERIAL_CONTROL ;
 int ES1370_REG_STATUS ;
 int ES1371REV_CT5880_A ;
 int ES1371REV_ES1373_8 ;
 int ES1371_DIS_SRC ;
 int ES1371_PCI_ID ;
 int ES1371_REG_CODEC ;
 int ES1371_REG_LEGACY ;
 int ES1371_REG_SMPRATE ;
 int ES1371_SYNC_RES ;
 int ES_ADC ;
 int ES_DAC1 ;
 int ES_DAC2 ;
 int ES_LOCK (struct es_info*) ;
 int ES_SET_IS_ES1370 (int ,int ) ;
 int ES_SMPREG_DAC1 ;
 int ES_SMPREG_DAC2 ;
 int ES_SMPREG_INT_REGS ;
 int ES_SMPREG_TRUNC_N ;
 int ES_SMPREG_VOL_ADC ;
 int ES_SMPREG_VOL_DAC1 ;
 int ES_SMPREG_VOL_DAC2 ;
 int ES_UNLOCK (struct es_info*) ;
 int es1371_adc_rate (struct es_info*,int,int ) ;
 int es1371_dac_rate (struct es_info*,int,int ) ;
 int es1371_src_write (struct es_info*,int,int) ;
 int es1371_wait_src_ready (struct es_info*) ;
 int es_wr (struct es_info*,int ,int,int) ;
 int pci_get_devid (int ) ;
 int pci_get_revid (int ) ;
 int pci_get_subdevice (int ) ;
 int pci_get_subvendor (int ) ;

int
es1371_init(struct es_info *es)
{
 uint32_t cssr, devid, revid, subdev;
 int idx;

 ES_LOCK(es);

 es->escfg = ES_SET_IS_ES1370(es->escfg, 0);
 es->num = 0;
 es->sctrl = 0;
 cssr = 0;
 devid = pci_get_devid(es->dev);
 revid = pci_get_revid(es->dev);
 subdev = (pci_get_subdevice(es->dev) << 16) |
     pci_get_subvendor(es->dev);





 switch (subdev) {
 case 0x20001274:
  es->ctrl = 0;
  break;
 default:
  es->ctrl = CTRL_JYSTK_EN;
  break;
 }
 if (devid == CT4730_PCI_ID) {

  es->ctrl |= (1 << 16);
 }

 es_wr(es, ES1370_REG_CONTROL, es->ctrl, 4);
 es_wr(es, ES1370_REG_SERIAL_CONTROL, es->sctrl, 4);
 es_wr(es, ES1371_REG_LEGACY, 0, 4);
 if ((devid == ES1371_PCI_ID && revid == ES1371REV_ES1373_8) ||
     (devid == ES1371_PCI_ID && revid == ES1371REV_CT5880_A) ||
     (devid == CT5880_PCI_ID && revid == CT5880REV_CT5880_C) ||
     (devid == CT5880_PCI_ID && revid == CT5880REV_CT5880_D) ||
     (devid == CT5880_PCI_ID && revid == CT5880REV_CT5880_E)) {
  cssr = 1 << 29;
  es_wr(es, ES1370_REG_STATUS, cssr, 4);
  DELAY(20000);
 }

 es_wr(es, ES1370_REG_CONTROL, es->ctrl, 4);
 es_wr(es, ES1371_REG_LEGACY, ES1371_SYNC_RES, 4);
 DELAY(2000);
 es_wr(es, ES1370_REG_CONTROL, es->sctrl, 4);
 es1371_wait_src_ready(es);

 es_wr(es, ES1371_REG_SMPRATE, ES1371_DIS_SRC, 4);
 for (idx = 0; idx < 0x80; idx++)
  es1371_src_write(es, idx, 0);
 es1371_src_write(es, ES_SMPREG_DAC1 + ES_SMPREG_TRUNC_N, 16 << 4);
 es1371_src_write(es, ES_SMPREG_DAC1 + ES_SMPREG_INT_REGS, 16 << 10);
 es1371_src_write(es, ES_SMPREG_DAC2 + ES_SMPREG_TRUNC_N, 16 << 4);
 es1371_src_write(es, ES_SMPREG_DAC2 + ES_SMPREG_INT_REGS, 16 << 10);
 es1371_src_write(es, ES_SMPREG_VOL_ADC, 1 << 12);
 es1371_src_write(es, ES_SMPREG_VOL_ADC + 1, 1 << 12);
 es1371_src_write(es, ES_SMPREG_VOL_DAC1, 1 << 12);
 es1371_src_write(es, ES_SMPREG_VOL_DAC1 + 1, 1 << 12);
 es1371_src_write(es, ES_SMPREG_VOL_DAC2, 1 << 12);
 es1371_src_write(es, ES_SMPREG_VOL_DAC2 + 1, 1 << 12);
 es1371_adc_rate(es, 22050, ES_ADC);
 es1371_dac_rate(es, 22050, ES_DAC1);
 es1371_dac_rate(es, 22050, ES_DAC2);







 es1371_wait_src_ready(es);
 es_wr(es, ES1371_REG_SMPRATE, 0, 4);

 es_wr(es, ES1371_REG_CODEC, 0, 4);
 es_wr(es, ES1370_REG_STATUS, cssr, 4);
 ES_UNLOCK(es);

 return (0);
}
