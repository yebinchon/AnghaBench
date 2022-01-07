
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct chipc_softc {int mem_regions; int mem_rman; int dev; } ;
struct chipc_region {scalar_t__ cr_rid; int cr_end; int cr_addr; } ;
typedef int rman_res_t ;
typedef int bhnd_port_type ;


 int BHND_DEBUG_DEV (int ,char*,int ,scalar_t__,scalar_t__) ;
 int ENODEV ;
 int STAILQ_INSERT_TAIL (int *,struct chipc_region*,int ) ;
 scalar_t__ bhnd_get_region_count (int ,int ,scalar_t__) ;
 int bhnd_port_type_name (int ) ;
 struct chipc_region* chipc_alloc_region (struct chipc_softc*,int ,scalar_t__,scalar_t__) ;
 int chipc_free_region (struct chipc_softc*,struct chipc_region*) ;
 int cr_link ;
 int rman_manage_region (int *,int ,int ) ;

__attribute__((used)) static int
chipc_rman_init_regions (struct chipc_softc *sc, bhnd_port_type type,
    u_int port)
{
 struct chipc_region *cr;
 rman_res_t start, end;
 u_int num_regions;
 int error;

 num_regions = bhnd_get_region_count(sc->dev, type, port);
 for (u_int region = 0; region < num_regions; region++) {

  cr = chipc_alloc_region(sc, type, port, region);
  if (cr == ((void*)0))
   return (ENODEV);


  if (cr->cr_rid < 0) {
   BHND_DEBUG_DEV(sc->dev, "no rid for chipc region "
       "%s%u.%u", bhnd_port_type_name(type), port, region);
   chipc_free_region(sc, cr);
   continue;
  }


  start = cr->cr_addr;
  end = cr->cr_end;
  if ((error = rman_manage_region(&sc->mem_rman, start, end))) {
   chipc_free_region(sc, cr);
   return (error);
  }


  STAILQ_INSERT_TAIL(&sc->mem_regions, cr, cr_link);
 }

 return (0);
}
