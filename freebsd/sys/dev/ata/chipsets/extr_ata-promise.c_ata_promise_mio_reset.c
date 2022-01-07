
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct ata_promise_sx4 {int mtx; int busy; } ;
struct ata_pci_controller {int r_res2; TYPE_1__* chip; struct ata_promise_sx4* chipset_data; } ;
struct TYPE_4__ {int (* softreset ) (int ,int ) ;} ;
struct ata_channel {int unit; int devices; TYPE_2__ hw; } ;
typedef int device_t ;
struct TYPE_3__ {int cfg2; } ;


 int ATA_ATAPI_MASTER ;
 void* ATA_ATA_MASTER ;
 int ATA_INL (int ,int) ;
 int ATA_OUTL (int ,int,int) ;
 int ATA_PM ;
 int ATA_PORTMULTIPLIER ;
 int DELAY (int) ;






 int ata_generic_reset (int ) ;
 int ata_pm_identify (int ) ;
 int ata_sata_phy_reset (int ,int,int) ;
 int ata_udelay (int) ;
 int bootverbose ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
ata_promise_mio_reset(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);
    struct ata_promise_sx4 *hpktp;

    switch (ctlr->chip->cfg2) {
    case 128:


 hpktp = ctlr->chipset_data;
 ATA_OUTL(ctlr->r_res2, 0xc0260 + (ch->unit << 7), ch->unit + 1);
 ata_udelay(1000);
 ATA_OUTL(ctlr->r_res2, 0xc0260 + (ch->unit << 7),
   (ATA_INL(ctlr->r_res2, 0xc0260 + (ch->unit << 7)) &
    ~0x00003f9f) | (ch->unit + 1));


 mtx_lock(&hpktp->mtx);
 ATA_OUTL(ctlr->r_res2, 0xc012c,
   (ATA_INL(ctlr->r_res2, 0xc012c) & ~0x00000f9f) | (1 << 11));
 DELAY(10);
 ATA_OUTL(ctlr->r_res2, 0xc012c,
   (ATA_INL(ctlr->r_res2, 0xc012c) & ~0x00000f9f));
 hpktp->busy = 0;
 mtx_unlock(&hpktp->mtx);
 ata_generic_reset(dev);
 break;

    case 131:
    case 133:
    case 130:
 if ((ctlr->chip->cfg2 == 130) ||
     ((ctlr->chip->cfg2 == 133) && (ch->unit < 2))) {


     ATA_OUTL(ctlr->r_res2, 0x06c, (0x00110000 << ch->unit));
 }


 ATA_OUTL(ctlr->r_res2, 0x0260 + (ch->unit << 7), (1 << 11));
 ata_udelay(10000);
 ATA_OUTL(ctlr->r_res2, 0x0260 + (ch->unit << 7),
   (ATA_INL(ctlr->r_res2, 0x0260 + (ch->unit << 7)) &
    ~0x00003f9f) | (ch->unit + 1));

 if ((ctlr->chip->cfg2 == 130) ||
     ((ctlr->chip->cfg2 == 133) && (ch->unit < 2))) {

     if (ata_sata_phy_reset(dev, -1, 1))
  ata_generic_reset(dev);
     else
  ch->devices = 0;


     ATA_OUTL(ctlr->r_res2, 0x06c, (0x00000011 << ch->unit));
 }
 else
     ata_generic_reset(dev);
 break;

    case 132:
    case 129:
 if ((ctlr->chip->cfg2 == 129) ||
     ((ctlr->chip->cfg2 == 132) && (ch->unit < 2))) {




     ATA_OUTL(ctlr->r_res2, 0x060, (0x00110000 << ch->unit));
 }


 ATA_OUTL(ctlr->r_res2, 0x0260 + (ch->unit << 7), (1 << 11));
 ata_udelay(10000);
 ATA_OUTL(ctlr->r_res2, 0x0260 + (ch->unit << 7),
   (ATA_INL(ctlr->r_res2, 0x0260 + (ch->unit << 7)) &
    ~0x00003f9f) | (ch->unit + 1));

 if ((ctlr->chip->cfg2 == 129) ||
     ((ctlr->chip->cfg2 == 132) && (ch->unit < 2))) {


     ATA_OUTL(ctlr->r_res2, 0x414 + (ch->unit << 8),
       (ATA_INL(ctlr->r_res2, 0x414 + (ch->unit << 8)) &
       ~0x00000003) | 0x00000001);

     if (ata_sata_phy_reset(dev, -1, 1)) {
  u_int32_t signature = ch->hw.softreset(dev, ATA_PM);

  if (1 | bootverbose)
             device_printf(dev, "SIGNATURE: %08x\n", signature);

  switch (signature >> 16) {
  case 0x0000:
      ch->devices = ATA_ATA_MASTER;
      break;
  case 0x9669:
      ch->devices = ATA_PORTMULTIPLIER;
      ata_pm_identify(dev);
      break;
  case 0xeb14:
      ch->devices = ATA_ATAPI_MASTER;
      break;
  default:
      if (bootverbose)
   device_printf(dev,
          "No signature, assuming disk device\n");
      ch->devices = ATA_ATA_MASTER;
  }
  if (bootverbose)
      device_printf(dev, "promise_mio_reset devices=%08x\n",
          ch->devices);

     } else
  ch->devices = 0;


     ATA_OUTL(ctlr->r_res2, 0x060, (0x00000011 << ch->unit));


     ATA_OUTL(ctlr->r_res2, 0x4e8 + (ch->unit << 8), 0x00);
 }
 else
     ata_generic_reset(dev);
 break;

    }
}
