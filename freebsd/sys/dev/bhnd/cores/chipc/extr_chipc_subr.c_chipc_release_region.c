
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chipc_softc {int dev; } ;
struct chipc_region {int cr_act_refs; int cr_refs; int * cr_res; int cr_res_rid; } ;


 int CHIPC_LOCK (struct chipc_softc*) ;
 int CHIPC_UNLOCK (struct chipc_softc*) ;
 int KASSERT (int,char*) ;
 int RF_ACTIVE ;
 int RF_ALLOCATED ;
 int SYS_RES_MEMORY ;
 int bhnd_deactivate_resource (int ,int ,int ,int *) ;
 int bhnd_release_resource (int ,int ,int ,int *) ;

int
chipc_release_region(struct chipc_softc *sc, struct chipc_region *cr,
    int flags)
{
 int error;

 CHIPC_LOCK(sc);
 error = 0;

 KASSERT(cr->cr_res != ((void*)0), ("release on NULL region resource"));

 if (flags & RF_ACTIVE) {
  KASSERT(cr->cr_act_refs > 0, ("RF_ACTIVE over-released"));
  KASSERT(cr->cr_act_refs <= cr->cr_refs,
       ("RF_ALLOCATED released with RF_ACTIVE held"));


  if (cr->cr_act_refs == 1) {
   error = bhnd_deactivate_resource(sc->dev,
       SYS_RES_MEMORY, cr->cr_res_rid, cr->cr_res);
   if (error)
    goto done;
  }


  cr->cr_act_refs--;
 }

 if (flags & RF_ALLOCATED) {
  KASSERT(cr->cr_refs > 0, ("overrelease of refs"));

  if (cr->cr_refs == 1) {
   error = bhnd_release_resource(sc->dev, SYS_RES_MEMORY,
       cr->cr_res_rid, cr->cr_res);
   if (error)
    goto done;

   cr->cr_res = ((void*)0);
  }


  cr->cr_refs--;
 }

done:
 CHIPC_UNLOCK(sc);
 return (error);
}
