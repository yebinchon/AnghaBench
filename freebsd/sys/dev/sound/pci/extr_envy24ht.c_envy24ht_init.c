
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct sc_info {int adcn; int dacn; int dev; TYPE_2__* caps; scalar_t__ speed; scalar_t__* intr; scalar_t__* run; int * dac; TYPE_3__* cfg; int * adc; } ;
struct TYPE_7__ {scalar_t__ subvendor; scalar_t__ subdevice; int scfg; scalar_t__ acl; scalar_t__ i2s; scalar_t__ spdif; TYPE_1__* codec; int gpiostate; int gpiodir; int gpiomask; } ;
struct TYPE_6__ {int fmtlist; } ;
struct TYPE_5__ {int (* init ) (int ) ;int (* create ) (int ,struct sc_info*,int ,int) ;} ;


 int DELAY (int) ;
 int ENOSPC ;
 int ENVY24HT_CCSM_SCFG_ADC ;
 int ENVY24HT_CCSM_SCFG_DAC ;
 int ENVY24HT_CCS_ACL ;
 int ENVY24HT_CCS_CTL ;
 scalar_t__ ENVY24HT_CCS_CTL_NATIVE ;
 scalar_t__ ENVY24HT_CCS_CTL_RESET ;
 int ENVY24HT_CCS_I2S ;
 int ENVY24HT_CCS_IMASK ;
 scalar_t__ ENVY24HT_CCS_IMASK_PMT ;
 int ENVY24HT_CCS_SCFG ;
 int ENVY24HT_CCS_SPDIF ;
 int ENVY24HT_ROUTE_CLASS_DMA ;
 int ENVY24HT_ROUTE_CLASS_MIX ;
 int ENVY24HT_ROUTE_DAC_1 ;
 int ENVY24HT_ROUTE_DAC_SPDIF ;
 scalar_t__ PCIM_LAC_DISABLE ;
 int PCIR_LAC ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 TYPE_3__* cfg_table ;
 int device_printf (int ,char*,...) ;
 scalar_t__ envy24ht_dmainit (struct sc_info*) ;
 int envy24ht_gpiosetdir (struct sc_info*,int ) ;
 int envy24ht_gpiosetmask (struct sc_info*,int ) ;
 int envy24ht_gpiowr (struct sc_info*,int ) ;
 int envy24ht_playfmt ;
 int envy24ht_putcfg (struct sc_info*) ;
 scalar_t__ envy24ht_rdcs (struct sc_info*,int ,int) ;
 int envy24ht_recfmt ;
 TYPE_3__* envy24ht_rom2cfg (struct sc_info*) ;
 int envy24ht_route (struct sc_info*,int ,int ,int ,int ) ;
 int envy24ht_wrcs (struct sc_info*,int ,scalar_t__,int) ;
 int envy24ht_wri2c (struct sc_info*,int,int,int) ;
 scalar_t__ pci_get_subdevice (int ) ;
 scalar_t__ pci_get_subvendor (int ) ;
 scalar_t__ pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,scalar_t__,int) ;
 int stub1 (int ,struct sc_info*,int ,int) ;
 int stub2 (int ) ;
 int stub3 (int ,struct sc_info*,int ,int) ;
 int stub4 (int ) ;

__attribute__((used)) static int
envy24ht_init(struct sc_info *sc)
{
 u_int32_t data;



 int i;
 u_int32_t sv, sd;
 sc->cfg = ((void*)0);
 for (i = 0; cfg_table[i].subvendor != 0 || cfg_table[i].subdevice != 0; i++) {

  sv = pci_get_subvendor(sc->dev);
  sd = pci_get_subdevice(sc->dev);
  if (sv == cfg_table[i].subvendor && sd == cfg_table[i].subdevice) {



   sc->cfg = &cfg_table[i];
   break;
  }
 }
 if (sc->cfg == ((void*)0)) {

  sc->cfg = envy24ht_rom2cfg(sc);
 }
 sc->adcn = ((sc->cfg->scfg & ENVY24HT_CCSM_SCFG_ADC) >> 2) + 1;
 sc->dacn = (sc->cfg->scfg & ENVY24HT_CCSM_SCFG_DAC) + 1;

 if (1 ) {
  envy24ht_putcfg(sc);
 }


 envy24ht_wrcs(sc, ENVY24HT_CCS_SCFG, sc->cfg->scfg, 1);
 envy24ht_wrcs(sc, ENVY24HT_CCS_ACL, sc->cfg->acl, 1);
 envy24ht_wrcs(sc, ENVY24HT_CCS_I2S, sc->cfg->i2s, 1);
 envy24ht_wrcs(sc, ENVY24HT_CCS_SPDIF, sc->cfg->spdif, 1);
 envy24ht_gpiosetmask(sc, sc->cfg->gpiomask);
 envy24ht_gpiosetdir(sc, sc->cfg->gpiodir);
 envy24ht_gpiowr(sc, sc->cfg->gpiostate);

 if ((sc->cfg->subvendor == 0x3031) && (sc->cfg->subdevice == 0x4553)) {
  envy24ht_wri2c(sc, 0x22, 0x00, 0x07);
  envy24ht_wri2c(sc, 0x22, 0x04, 0x5f | 0x80);
  envy24ht_wri2c(sc, 0x22, 0x05, 0x5f | 0x80);
 }

 for (i = 0; i < sc->adcn; i++) {
  sc->adc[i] = sc->cfg->codec->create(sc->dev, sc, PCMDIR_REC, i);
  sc->cfg->codec->init(sc->adc[i]);
 }
 for (i = 0; i < sc->dacn; i++) {
  sc->dac[i] = sc->cfg->codec->create(sc->dev, sc, PCMDIR_PLAY, i);
  sc->cfg->codec->init(sc->dac[i]);
 }





 if (envy24ht_dmainit(sc))
  return ENOSPC;


 sc->run[0] = sc->run[1] = 0;
 sc->intr[0] = sc->intr[1] = 0;
 sc->speed = 0;
 sc->caps[0].fmtlist = envy24ht_playfmt;
 sc->caps[1].fmtlist = envy24ht_recfmt;
 data = envy24ht_rdcs(sc, ENVY24HT_CCS_IMASK, 1);
 envy24ht_wrcs(sc, ENVY24HT_CCS_IMASK, data & ~ENVY24HT_CCS_IMASK_PMT, 1);
 data = envy24ht_rdcs(sc, ENVY24HT_CCS_IMASK, 1);




 return 0;
}
