
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndis_softc {int ndis_am_rid; int ndis_dev; int * ndis_res_am; int ndis_rl; int ndis_rescnt; } ;


 int CARD_SET_MEMORY_OFFSET (int ,int ,int,int ,int *) ;
 int CARD_SET_RES_FLAGS (int ,int ,int ,int,int ) ;
 int ENXIO ;
 int NDIS_AM_RID ;
 int PCCARD_A_MEM_ATTR ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_anywhere (int ,int ,int*,int,int ) ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*,...) ;
 int resource_list_add (int *,int ,int,int ,int ,int ) ;
 int rman_get_end (int *) ;
 int rman_get_size (int *) ;
 int rman_get_start (int *) ;

__attribute__((used)) static int
ndis_alloc_amem(struct ndis_softc *sc)
{
 int error, rid;

 rid = NDIS_AM_RID;
 sc->ndis_res_am = bus_alloc_resource_anywhere(sc->ndis_dev,
     SYS_RES_MEMORY, &rid, 0x1000, RF_ACTIVE);

 if (sc->ndis_res_am == ((void*)0)) {
  device_printf(sc->ndis_dev,
      "failed to allocate attribute memory\n");
  return(ENXIO);
 }
 sc->ndis_rescnt++;
 resource_list_add(&sc->ndis_rl, SYS_RES_MEMORY, rid,
     rman_get_start(sc->ndis_res_am), rman_get_end(sc->ndis_res_am),
     rman_get_size(sc->ndis_res_am));

 error = CARD_SET_MEMORY_OFFSET(device_get_parent(sc->ndis_dev),
     sc->ndis_dev, rid, 0, ((void*)0));

 if (error) {
  device_printf(sc->ndis_dev,
      "CARD_SET_MEMORY_OFFSET() returned 0x%x\n", error);
  return(error);
 }

 error = CARD_SET_RES_FLAGS(device_get_parent(sc->ndis_dev),
     sc->ndis_dev, SYS_RES_MEMORY, rid, PCCARD_A_MEM_ATTR);

 if (error) {
  device_printf(sc->ndis_dev,
      "CARD_SET_RES_FLAGS() returned 0x%x\n", error);
  return(error);
 }

 sc->ndis_am_rid = rid;

 return(0);
}
