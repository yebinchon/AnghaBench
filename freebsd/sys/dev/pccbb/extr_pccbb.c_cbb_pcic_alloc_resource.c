
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource {int dummy; } ;
struct cbb_softc {int irq_res; } ;
typedef int rman_res_t ;
typedef int device_t ;


 struct resource* BUS_ALLOC_RESOURCE (int ,int ,int,int*,int,int,int,int) ;
 int CBB_MEMALIGN ;
 int RF_ACTIVE ;
 int RF_ALIGNMENT (int) ;
 int RF_ALIGNMENT_MASK ;
 int RF_SHAREABLE ;



 scalar_t__ bus_activate_resource (int ,int,int,struct resource*) ;
 int bus_release_resource (int ,int,int,struct resource*) ;
 int cbb_insert_res (struct cbb_softc*,struct resource*,int,int) ;
 int cbb_start_16_io ;
 int cbb_start_mem ;
 int device_get_parent (int ) ;
 struct cbb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int,int) ;
 int rman_get_start (int ) ;
 int rman_make_alignment_flags (int) ;

__attribute__((used)) static struct resource *
cbb_pcic_alloc_resource(device_t brdev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct resource *res = ((void*)0);
 struct cbb_softc *sc = device_get_softc(brdev);
 int align;
 int tmp;

 switch (type) {
 case 128:
  if (start < cbb_start_mem)
   start = cbb_start_mem;
  if (end < start)
   end = start;
  if (count < CBB_MEMALIGN)
   align = CBB_MEMALIGN;
  else
   align = count;
  if (align > (1 << RF_ALIGNMENT(flags)))
   flags = (flags & ~RF_ALIGNMENT_MASK) |
       rman_make_alignment_flags(align);
  break;
 case 130:
  if (start < cbb_start_16_io)
   start = cbb_start_16_io;
  if (end < start)
   end = start;
  break;
 case 129:
  tmp = rman_get_start(sc->irq_res);
  if (start > tmp || end < tmp || count != 1) {
   device_printf(child, "requested interrupt %jd-%jd,"
       "count = %jd not supported by cbb\n",
       start, end, count);
   return (((void*)0));
  }
  flags |= RF_SHAREABLE;
  start = end = rman_get_start(sc->irq_res);
  break;
 }
 res = BUS_ALLOC_RESOURCE(device_get_parent(brdev), child, type, rid,
     start, end, count, flags & ~RF_ACTIVE);
 if (res == ((void*)0))
  return (((void*)0));
 cbb_insert_res(sc, res, type, *rid);
 if (flags & RF_ACTIVE) {
  if (bus_activate_resource(child, type, *rid, res) != 0) {
   bus_release_resource(child, type, *rid, res);
   return (((void*)0));
  }
 }

 return (res);
}
