
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chipc_softc {int dev; } ;
struct chipc_region {scalar_t__ cr_refs; int cr_res_rid; int cr_rid; scalar_t__ cr_act_refs; int * cr_res; int cr_count; int cr_end; int cr_addr; } ;


 int CHIPC_LOCK (struct chipc_softc*) ;
 int CHIPC_UNLOCK (struct chipc_softc*) ;
 int EINVAL ;
 int ENXIO ;
 int KASSERT (int,char*) ;
 int RF_ACTIVE ;
 int RF_ALLOCATED ;
 int RF_SHAREABLE ;
 int SYS_RES_MEMORY ;
 int bhnd_activate_resource (int ,int ,int,int *) ;
 int * bhnd_alloc_resource (int ,int ,int*,int ,int ,int ,int ) ;
 int chipc_release_region (struct chipc_softc*,struct chipc_region*,int) ;

int
chipc_retain_region(struct chipc_softc *sc, struct chipc_region *cr, int flags)
{
 int error;

 KASSERT(!(flags &~ (RF_ACTIVE|RF_ALLOCATED)), ("unsupported flags"));

 CHIPC_LOCK(sc);


 if (flags & RF_ALLOCATED) {

  if (cr->cr_refs == 0) {
   KASSERT(cr->cr_res == ((void*)0),
       ("non-NULL resource has refcount"));


   if ((cr->cr_res_rid = cr->cr_rid) == -1) {
    CHIPC_UNLOCK(sc);
    return (EINVAL);
   }


   cr->cr_res = bhnd_alloc_resource(sc->dev,
       SYS_RES_MEMORY, &cr->cr_res_rid, cr->cr_addr,
       cr->cr_end, cr->cr_count, RF_SHAREABLE);
   if (cr->cr_res == ((void*)0)) {
    CHIPC_UNLOCK(sc);
    return (ENXIO);
   }
  }


  cr->cr_refs++;
 }



 if (flags & RF_ACTIVE) {
  KASSERT(cr->cr_refs > 0,
      ("cannot activate unallocated resource"));


  if (cr->cr_act_refs == 0) {
   error = bhnd_activate_resource(sc->dev, SYS_RES_MEMORY,
       cr->cr_res_rid, cr->cr_res);
   if (error) {


    CHIPC_UNLOCK(sc);
    chipc_release_region(sc, cr,
        flags &~ RF_ACTIVE);
    return (error);
   }
  }


  cr->cr_act_refs++;
 }

 CHIPC_UNLOCK(sc);
 return (0);
}
