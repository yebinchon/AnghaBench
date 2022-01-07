
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct resource {int dummy; } ;
struct aic7770_identity {int dummy; } ;
typedef int driver_t ;
typedef int * device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int AHC_EISA_IOSIZE ;
 int AHC_EISA_SLOT_OFFSET ;
 int AHC_EISA_SLOT_SIZE ;
 int * BUS_ADD_CHILD (int *,int ,char*,int) ;
 int ISA_ORDER_SPECULATIVE ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 struct aic7770_identity* ahc_isa_find_device (int ,int ) ;
 scalar_t__ bootverbose ;
 struct resource* bus_alloc_resource (int *,int ,int*,int,int,int ,int ) ;
 int bus_release_resource (int *,int ,int,struct resource*) ;
 int bus_set_resource (int *,int ,int ,int,int ) ;
 int device_set_driver (int *,int *) ;
 int printf (char*,int,int) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;

__attribute__((used)) static void
ahc_isa_identify(driver_t *driver, device_t parent)
{
 int slot;
 int max_slot;

 max_slot = 14;
 for (slot = 0; slot <= max_slot; slot++) {
  struct aic7770_identity *entry;
  bus_space_tag_t tag;
  bus_space_handle_t bsh;
  struct resource *regs;
  uint32_t iobase;
  int rid;

  rid = 0;
  iobase = (slot * AHC_EISA_SLOT_SIZE) + AHC_EISA_SLOT_OFFSET;
  regs = bus_alloc_resource(parent, SYS_RES_IOPORT, &rid,
       iobase, iobase, AHC_EISA_IOSIZE,
       RF_ACTIVE);
  if (regs == ((void*)0)) {
   if (bootverbose)
    printf("ahc_isa_identify %d: ioport 0x%x "
           "alloc failed\n", slot, iobase);
   continue;
  }

  tag = rman_get_bustag(regs);
  bsh = rman_get_bushandle(regs);

  entry = ahc_isa_find_device(tag, bsh);
  if (entry != ((void*)0)) {
   device_t child;

   child = BUS_ADD_CHILD(parent, ISA_ORDER_SPECULATIVE,
           "ahc", -1);
   if (child != ((void*)0)) {
    device_set_driver(child, driver);
    bus_set_resource(child, SYS_RES_IOPORT,
       0, iobase, AHC_EISA_IOSIZE);
   }
  }
  bus_release_resource(parent, SYS_RES_IOPORT, rid, regs);
 }
}
