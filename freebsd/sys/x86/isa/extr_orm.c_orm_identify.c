
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct resource {int dummy; } ;
struct orm_softc {int rnum; int* rid; struct resource** res; } ;
typedef int driver_t ;
typedef int device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef int buf ;


 int BUS_ADD_CHILD (int ,int ,char*,int) ;
 scalar_t__ IOMEM_END ;
 scalar_t__ IOMEM_START ;
 scalar_t__ IOMEM_STEP ;
 int ISA_ORDER_SENSITIVE ;
 int MAX_ROMS ;
 int ORM_ID ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_delete_resource (int ,int ,int) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_set_resource (int ,int ,int,scalar_t__,scalar_t__) ;
 int bus_space_read_region_1 (int ,int ,int ,int*,int) ;
 int device_delete_child (int ,int ) ;
 struct orm_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 int device_set_driver (int ,int *) ;
 int isa_set_logicalid (int ,int ) ;
 int isa_set_vendorid (int ,int ) ;
 scalar_t__ resource_disabled (char*,int ) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;

__attribute__((used)) static void
orm_identify(driver_t* driver, device_t parent)
{
 bus_space_handle_t bh;
 bus_space_tag_t bt;
 device_t child;
 u_int32_t chunk = IOMEM_START;
 struct resource *res;
 int rid;
 u_int32_t rom_size;
 struct orm_softc *sc;
 u_int8_t buf[3];

 if (resource_disabled("orm", 0))
  return;

 child = BUS_ADD_CHILD(parent, ISA_ORDER_SENSITIVE, "orm", -1);
 device_set_driver(child, driver);
 isa_set_logicalid(child, ORM_ID);
 isa_set_vendorid(child, ORM_ID);
 sc = device_get_softc(child);
 sc->rnum = 0;
 while (sc->rnum < MAX_ROMS && chunk < IOMEM_END) {
  bus_set_resource(child, SYS_RES_MEMORY, sc->rnum, chunk,
      IOMEM_STEP);
  rid = sc->rnum;
  res = bus_alloc_resource_any(child, SYS_RES_MEMORY, &rid,
      RF_ACTIVE);
  if (res == ((void*)0)) {
   bus_delete_resource(child, SYS_RES_MEMORY, sc->rnum);
   chunk += IOMEM_STEP;
   continue;
  }
  bt = rman_get_bustag(res);
  bh = rman_get_bushandle(res);
  bus_space_read_region_1(bt, bh, 0, buf, sizeof(buf));
  bus_release_resource(child, SYS_RES_MEMORY, rid, res);
  bus_delete_resource(child, SYS_RES_MEMORY, sc->rnum);
  if (buf[0] != 0x55 || buf[1] != 0xAA || (buf[2] & 0x03) != 0) {
   chunk += IOMEM_STEP;
   continue;
  }
  rom_size = buf[2] << 9;
  bus_set_resource(child, SYS_RES_MEMORY, sc->rnum, chunk,
      rom_size);
  rid = sc->rnum;
  res = bus_alloc_resource_any(child, SYS_RES_MEMORY, &rid, 0);
  if (res == ((void*)0)) {
   bus_delete_resource(child, SYS_RES_MEMORY, sc->rnum);
   chunk += IOMEM_STEP;
   continue;
  }
  sc->rid[sc->rnum] = rid;
  sc->res[sc->rnum] = res;
  sc->rnum++;
  chunk += rom_size;
 }

 if (sc->rnum == 0)
  device_delete_child(parent, child);
 else if (sc->rnum == 1)
  device_set_desc(child, "ISA Option ROM");
 else
  device_set_desc(child, "ISA Option ROMs");
}
