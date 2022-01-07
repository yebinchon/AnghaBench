
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int32_t ;
struct ata_pci_controller {int r_res2; scalar_t__ chipset_data; TYPE_1__* chip; } ;
struct ata_channel {int unit; int conntask; } ;
typedef int device_t ;
struct TYPE_2__ {int cfg2; } ;


 int ATA_INL (int ,int) ;
 int ATA_OUTL (int ,int,int) ;





 scalar_t__ bootverbose ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

__attribute__((used)) static int
ata_promise_mio_status(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);
    u_int32_t stat_reg, vector, status;

    switch (ctlr->chip->cfg2) {
    case 130:
    case 132:
    case 129:
 stat_reg = 0x6c;
 break;
    case 131:
    case 128:
    default:
 stat_reg = 0x60;
 break;
    }


    vector = (uint32_t)(uintptr_t)ctlr->chipset_data;


    status = ATA_INL(ctlr->r_res2, stat_reg);
    ATA_OUTL(ctlr->r_res2, stat_reg, status & (0x00000011 << ch->unit));


    if (status & (0x00000001 << ch->unit)) {
 if (bootverbose)
     device_printf(dev, "DISCONNECT requested\n");
 taskqueue_enqueue(taskqueue_thread, &ch->conntask);
    }


    if (status & (0x00000010 << ch->unit)) {
 if (bootverbose)
     device_printf(dev, "CONNECT requested\n");
 taskqueue_enqueue(taskqueue_thread, &ch->conntask);
    }


    return (vector & (1 << (ch->unit + 1)));
}
