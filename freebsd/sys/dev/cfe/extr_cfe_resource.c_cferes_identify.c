
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;
struct resource {int dummy; } ;
struct cferes_softc {int rnum; int* rid; struct resource** res; } ;
typedef int driver_t ;
typedef int device_t ;


 int BUS_ADD_CHILD (int ,int,char*,int) ;
 int CFE_FLG_FULL_ARENA ;
 scalar_t__ CFE_MI_RESERVED ;
 size_t MAX_CFE_RESERVATIONS ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_delete_resource (int ,int ,int) ;
 int bus_set_resource (int ,int ,int,scalar_t__,scalar_t__) ;
 int cfe_enummem (int,int ,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int device_delete_child (int ,int ) ;
 struct cferes_softc* device_get_softc (int ) ;
 char* device_getnameunit (int ) ;
 int device_set_desc (int ,char*) ;
 int device_set_driver (int ,int *) ;
 int printf (char*,char*,int ,int ) ;

__attribute__((used)) static void
cferes_identify(driver_t* driver, device_t parent)
{
 device_t child;
 int i;
 struct resource *res;
 int result;
 int rid;
 struct cferes_softc *sc;
 uint64_t addr, len, type;

 child = BUS_ADD_CHILD(parent, 100, "cferes", -1);
 device_set_driver(child, driver);
 sc = device_get_softc(child);

 sc->rnum = 0;
 for (i = 0; i < ~0U; i++) {
  result = cfe_enummem(i, CFE_FLG_FULL_ARENA, &addr, &len, &type);
  if (result < 0)
   break;
  if (type != CFE_MI_RESERVED) {
   if (bootverbose)
   printf("%s: skipping non reserved range 0x%0jx(%jd)\n",
       device_getnameunit(child),
       (uintmax_t)addr, (uintmax_t)len);
   continue;
  }

  bus_set_resource(child, SYS_RES_MEMORY, sc->rnum, addr, len);
  rid = sc->rnum;
  res = bus_alloc_resource_any(child, SYS_RES_MEMORY, &rid, 0);
  if (res == ((void*)0)) {
   bus_delete_resource(child, SYS_RES_MEMORY, sc->rnum);
   continue;
  }
  sc->rid[sc->rnum] = rid;
  sc->res[sc->rnum] = res;

  sc->rnum++;
  if (sc->rnum == MAX_CFE_RESERVATIONS)
   break;
 }

 if (sc->rnum == 0) {
  device_delete_child(parent, child);
  return;
 }

 device_set_desc(child, "CFE reserved memory");
}
