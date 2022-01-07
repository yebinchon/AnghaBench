
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct TYPE_7__ {int command; } ;
struct TYPE_8__ {TYPE_2__ ata; } ;
struct ata_request {int unit; TYPE_4__* dma; TYPE_3__ u; int parent; } ;
struct ata_pci_controller {int r_res2; TYPE_1__* chip; } ;
struct TYPE_10__ {int work_bus; scalar_t__ work; } ;
struct ata_channel {int unit; TYPE_5__ dma; } ;
struct TYPE_9__ {int sg_bus; } ;
struct TYPE_6__ {scalar_t__ cfg2; } ;


 int ATA_OUTB (int ,int,int) ;
 int ATA_OUTL (int ,int,int) ;




 scalar_t__ PR_CMBO2 ;
 scalar_t__ PR_SATA2 ;
 int ata_generic_command (struct ata_request*) ;
 int ata_promise_apkt (int *,struct ata_request*) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 scalar_t__ htole32 (int) ;

__attribute__((used)) static int
ata_promise_mio_command(struct ata_request *request)
{
    struct ata_pci_controller *ctlr=device_get_softc(device_get_parent(request->parent));
    struct ata_channel *ch = device_get_softc(request->parent);

    u_int32_t *wordp = (u_int32_t *)ch->dma.work;

    ATA_OUTL(ctlr->r_res2, (ch->unit + 1) << 2, 0x00000001);

    if ((ctlr->chip->cfg2 == PR_SATA2) ||
        ((ctlr->chip->cfg2 == PR_CMBO2) && (ch->unit < 2))) {

 ATA_OUTB(ctlr->r_res2, 0x4e8 + (ch->unit << 8), request->unit & 0x0f);
    }


    switch (request->u.ata.command) {
    default:
 return ata_generic_command(request);

    case 131:
    case 130:
 wordp[0] = htole32(0x04 | ((ch->unit + 1) << 16) | (0x00 << 24));
 break;

    case 129:
    case 128:
 wordp[0] = htole32(0x00 | ((ch->unit + 1) << 16) | (0x00 << 24));
 break;
    }
    wordp[1] = htole32(request->dma->sg_bus);
    wordp[2] = 0;
    ata_promise_apkt((u_int8_t*)wordp, request);

    ATA_OUTL(ctlr->r_res2, 0x0240 + (ch->unit << 7), ch->dma.work_bus);
    return 0;
}
