
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chipc_softc {int dev; } ;
struct chipc_region {scalar_t__ cr_refs; int * cr_res; int cr_res_rid; int cr_region_num; int cr_port_num; int cr_port_type; } ;


 int KASSERT (int,char*) ;
 int M_BHND ;
 int SYS_RES_MEMORY ;
 int bhnd_port_type_name (int ) ;
 int bhnd_release_resource (int ,int ,int ,int *) ;
 int free (struct chipc_region*,int ) ;

void
chipc_free_region(struct chipc_softc *sc, struct chipc_region *cr)
{
 KASSERT(cr->cr_refs == 0,
     ("chipc %s%u.%u region has %u active references",
      bhnd_port_type_name(cr->cr_port_type), cr->cr_port_num,
      cr->cr_region_num, cr->cr_refs));

 if (cr->cr_res != ((void*)0)) {
  bhnd_release_resource(sc->dev, SYS_RES_MEMORY, cr->cr_res_rid,
      cr->cr_res);
 }

 free(cr, M_BHND);
}
