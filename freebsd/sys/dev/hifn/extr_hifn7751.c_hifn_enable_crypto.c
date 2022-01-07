
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int32_t ;
struct hifn_softc {int sc_dev; } ;
struct TYPE_3__ {scalar_t__ pci_vendor; scalar_t__ pci_prod; char* card_id; } ;


 int DELAY (int) ;
 int HIFN_0_PUCNFG ;
 int HIFN_0_PUSTAT ;
 int HIFN_1_DMA_CNFG ;
 size_t HIFN_DMACNFG_DMARESET ;
 size_t HIFN_DMACNFG_MODE ;
 size_t HIFN_DMACNFG_MSTRESET ;
 size_t HIFN_DMACNFG_UNLOCK ;
 size_t HIFN_PUCNFG_CHIPID ;
 size_t HIFN_PUSTAT_CHIPENA ;



 int HIFN_UNLOCK_SECRET1 ;
 int HIFN_UNLOCK_SECRET2 ;
 size_t READ_REG_0 (struct hifn_softc*,int ) ;
 size_t READ_REG_1 (struct hifn_softc*,int ) ;
 int WRITE_REG_0 (struct hifn_softc*,int ,size_t) ;
 int WRITE_REG_1 (struct hifn_softc*,int ,size_t) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ hifn_debug ;
 size_t hifn_next_signature (size_t,char) ;
 size_t nitems (TYPE_1__*) ;
 TYPE_1__* pci2id ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
hifn_enable_crypto(struct hifn_softc *sc)
{
 u_int32_t dmacfg, ramcfg, encl, addr, i;
 char *offtbl = ((void*)0);

 for (i = 0; i < nitems(pci2id); i++) {
  if (pci2id[i].pci_vendor == pci_get_vendor(sc->sc_dev) &&
      pci2id[i].pci_prod == pci_get_device(sc->sc_dev)) {
   offtbl = pci2id[i].card_id;
   break;
  }
 }
 if (offtbl == ((void*)0)) {
  device_printf(sc->sc_dev, "Unknown card!\n");
  return (1);
 }

 ramcfg = READ_REG_0(sc, HIFN_0_PUCNFG);
 dmacfg = READ_REG_1(sc, HIFN_1_DMA_CNFG);





 WRITE_REG_0(sc, HIFN_0_PUCNFG, ramcfg | HIFN_PUCNFG_CHIPID);

 encl = READ_REG_0(sc, HIFN_0_PUSTAT) & HIFN_PUSTAT_CHIPENA;





 if (encl == 129 || encl == 128) {





  goto report;
 }

 if (encl != 0 && encl != 130) {





  return 1;
 }

 WRITE_REG_1(sc, HIFN_1_DMA_CNFG, HIFN_DMACNFG_UNLOCK |
     HIFN_DMACNFG_MSTRESET | HIFN_DMACNFG_DMARESET | HIFN_DMACNFG_MODE);
 DELAY(1000);
 addr = READ_REG_1(sc, HIFN_UNLOCK_SECRET1);
 DELAY(1000);
 WRITE_REG_1(sc, HIFN_UNLOCK_SECRET2, 0);
 DELAY(1000);

 for (i = 0; i <= 12; i++) {
  addr = hifn_next_signature(addr, offtbl[i] + 0x101);
  WRITE_REG_1(sc, HIFN_UNLOCK_SECRET2, addr);

  DELAY(1000);
 }

 WRITE_REG_0(sc, HIFN_0_PUCNFG, ramcfg | HIFN_PUCNFG_CHIPID);
 encl = READ_REG_0(sc, HIFN_0_PUSTAT) & HIFN_PUSTAT_CHIPENA;
report:
 WRITE_REG_0(sc, HIFN_0_PUCNFG, ramcfg);
 WRITE_REG_1(sc, HIFN_1_DMA_CNFG, dmacfg);

 switch (encl) {
 case 129:
 case 128:
  break;
 case 130:
 default:
  device_printf(sc->sc_dev, "disabled");
  break;
 }

 return 0;
}
