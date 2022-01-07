
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bhnd_erom_iores {int mapped_rid; int owner_rid; TYPE_1__* mapped; int owner; } ;
struct bhnd_erom_io {int dummy; } ;
typedef scalar_t__ bhnd_size_t ;
typedef scalar_t__ bhnd_addr_t ;
struct TYPE_3__ {int res; } ;


 scalar_t__ BHND_ADDR_MAX ;
 int EINVAL ;
 int ENXIO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_MEMORY ;
 TYPE_1__* bhnd_alloc_resource (int ,int ,int*,scalar_t__,scalar_t__,scalar_t__,int) ;
 int bhnd_release_resource (int ,int ,int,TYPE_1__*) ;
 scalar_t__ rman_get_size (int ) ;
 scalar_t__ rman_get_start (int ) ;

__attribute__((used)) static int
bhnd_erom_iores_map(struct bhnd_erom_io *eio, bhnd_addr_t addr,
    bhnd_size_t size)
{
 struct bhnd_erom_iores *iores;

 iores = (struct bhnd_erom_iores *)eio;


 if (size == 0)
  return (EINVAL);

 if (BHND_ADDR_MAX - size < addr)
  return (EINVAL);


 if (iores->mapped) {

  if (rman_get_start(iores->mapped->res) == addr &&
      rman_get_size(iores->mapped->res) == size)
  {
   return (0);
  }


  bhnd_release_resource(iores->owner, SYS_RES_MEMORY,
      iores->mapped_rid, iores->mapped);
  iores->mapped = ((void*)0);
  iores->mapped_rid = -1;
 }


 iores->mapped_rid = iores->owner_rid;
 iores->mapped = bhnd_alloc_resource(iores->owner, SYS_RES_MEMORY,
     &iores->mapped_rid, addr, addr+size-1, size,
     RF_ACTIVE|RF_SHAREABLE);
 if (iores->mapped == ((void*)0)) {
  iores->mapped_rid = -1;
  return (ENXIO);
 }

 return (0);
}
