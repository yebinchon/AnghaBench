
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct es_info {TYPE_1__* ch; } ;
typedef int device_t ;
typedef int dev ;
struct TYPE_2__ {int * channel; } ;


 int CT5880REV_CT5880_C ;
 int CT5880REV_CT5880_D ;
 int CT5880REV_CT5880_E ;
 int CT5880_PCI_ID ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int ES1370_PCI_ID ;
 int ES1371REV_CT5880_A ;
 int ES1371REV_ES1373_8 ;
 int ES1371_PCI_ID ;
 size_t ES_ADC ;
 size_t ES_DAC1 ;
 size_t ES_DAC2 ;
 int OID_AUTO ;
 int PCIR_LATTIMER ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,int ,int,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int device_get_name (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int pci_get_devid (int ) ;
 int pci_get_revid (int ) ;
 int pci_write_config (int ,int ,int,int) ;
 struct es_info* pcm_getdevinfo (int ) ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;
 int sysctl_es137x_fixed_rate ;
 int sysctl_es137x_latency_timer ;
 int sysctl_es137x_single_pcm_mixer ;
 int sysctl_es137x_spdif_enable ;
 int sysctl_es_polling ;

__attribute__((used)) static void
es_init_sysctls(device_t dev)
{
 struct es_info *es;
 int r, devid, revid;

 devid = pci_get_devid(dev);
 revid = pci_get_revid(dev);
 es = pcm_getdevinfo(dev);
 if ((devid == ES1371_PCI_ID && revid == ES1371REV_ES1373_8) ||
     (devid == ES1371_PCI_ID && revid == ES1371REV_CT5880_A) ||
     (devid == CT5880_PCI_ID && revid == CT5880REV_CT5880_C) ||
     (devid == CT5880_PCI_ID && revid == CT5880REV_CT5880_D) ||
     (devid == CT5880_PCI_ID && revid == CT5880REV_CT5880_E)) {





  SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
      SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
      "spdif_enabled", CTLTYPE_INT | CTLFLAG_RW, dev, sizeof(dev),
      sysctl_es137x_spdif_enable, "I",
      "Enable S/PDIF output on primary playback channel");
 } else if (devid == ES1370_PCI_ID) {



  if (es->ch[ES_DAC2].channel != ((void*)0) &&
      es->ch[ES_ADC].channel != ((void*)0)) {





   SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
       SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
       OID_AUTO, "fixed_rate", CTLTYPE_INT | CTLFLAG_RW,
       dev, sizeof(dev), sysctl_es137x_fixed_rate, "I",
       "Enable fixed rate playback/recording");
  }



  if (es->ch[ES_DAC1].channel != ((void*)0) &&
      es->ch[ES_DAC2].channel != ((void*)0)) {





   SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
       SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
       OID_AUTO, "single_pcm_mixer",
       CTLTYPE_INT | CTLFLAG_RW, dev, sizeof(dev),
       sysctl_es137x_single_pcm_mixer, "I",
       "Single PCM mixer controller for both DAC1/DAC2");
  }
 }
 if (resource_int_value(device_get_name(dev), device_get_unit(dev),
     "latency_timer", &r) == 0 && !(r < 0 || r > 255))
  pci_write_config(dev, PCIR_LATTIMER, r, 1);



 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
     "latency_timer", CTLTYPE_INT | CTLFLAG_RW, dev, sizeof(dev),
     sysctl_es137x_latency_timer, "I",
     "PCI Latency Timer configuration");
 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
     "polling", CTLTYPE_INT | CTLFLAG_RW, dev, sizeof(dev),
     sysctl_es_polling, "I",
     "Enable polling mode");
}
