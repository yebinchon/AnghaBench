
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct resource {int dummy; } ;
struct ahci_controller {int remap_size; int emloc; int capsem; TYPE_1__* irqs; int r_mem; int sc_iomem; int remap_offset; scalar_t__ channels; } ;
typedef int rman_res_t ;
typedef int device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;
struct TYPE_2__ {struct resource* r_irq; } ;


 int AHCI_EM_CTL ;
 int AHCI_EM_SMB ;
 int AHCI_EM_UNIT ;
 int AHCI_EM_XMT ;
 int AHCI_OFFSET ;
 int AHCI_REMAPPED_UNIT ;
 int AHCI_UNIT ;
 int ATA_IRQ_RID ;
 int RF_ACTIVE ;


 int bus_space_subregion (int ,int ,int,int,int *) ;
 scalar_t__ device_get_ivars (int ) ;
 struct ahci_controller* device_get_softc (int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int rman_get_start (int ) ;
 struct resource* rman_reserve_resource (int *,int ,int ,int,int ,int ) ;
 int rman_set_bushandle (struct resource*,int ) ;
 int rman_set_bustag (struct resource*,int ) ;

struct resource *
ahci_alloc_resource(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct ahci_controller *ctlr = device_get_softc(dev);
 struct resource *res;
 rman_res_t st;
 int offset, size, unit;
 bool is_em, is_remapped;

 unit = (intptr_t)device_get_ivars(child);
 is_em = is_remapped = 0;
 if (unit & AHCI_REMAPPED_UNIT) {
  unit &= AHCI_UNIT;
  unit -= ctlr->channels;
  is_remapped = 1;
 } else if (unit & AHCI_EM_UNIT) {
  unit &= AHCI_UNIT;
  is_em = 1;
 }
 res = ((void*)0);
 switch (type) {
 case 128:
  if (is_remapped) {
   offset = ctlr->remap_offset + unit * ctlr->remap_size;
   size = ctlr->remap_size;
  } else if (!is_em) {
   offset = AHCI_OFFSET + (unit << 7);
   size = 128;
  } else if (*rid == 0) {
   offset = AHCI_EM_CTL;
   size = 4;
  } else {
   offset = (ctlr->emloc & 0xffff0000) >> 14;
   size = (ctlr->emloc & 0x0000ffff) << 2;
   if (*rid != 1) {
    if (*rid == 2 && (ctlr->capsem &
        (AHCI_EM_XMT | AHCI_EM_SMB)) == 0)
     offset += size;
    else
     break;
   }
  }
  st = rman_get_start(ctlr->r_mem);
  res = rman_reserve_resource(&ctlr->sc_iomem, st + offset,
      st + offset + size - 1, size, RF_ACTIVE, child);
  if (res) {
   bus_space_handle_t bsh;
   bus_space_tag_t bst;
   bsh = rman_get_bushandle(ctlr->r_mem);
   bst = rman_get_bustag(ctlr->r_mem);
   bus_space_subregion(bst, bsh, offset, 128, &bsh);
   rman_set_bushandle(res, bsh);
   rman_set_bustag(res, bst);
  }
  break;
 case 129:
  if (*rid == ATA_IRQ_RID)
   res = ctlr->irqs[0].r_irq;
  break;
 }
 return (res);
}
