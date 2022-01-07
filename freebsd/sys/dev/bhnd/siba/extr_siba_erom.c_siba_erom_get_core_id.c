
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct siba_erom {int io; } ;
struct TYPE_2__ {scalar_t__ vendor; scalar_t__ device; int unit; } ;
struct siba_core_id {TYPE_1__ core_info; } ;


 int siba_eio_read_core_id (int *,scalar_t__,int ,struct siba_core_id*) ;

int
siba_erom_get_core_id(struct siba_erom *sc, u_int core_idx,
    struct siba_core_id *result)
{
 struct siba_core_id sid;
 int error;


 if ((error = siba_eio_read_core_id(&sc->io, core_idx, 0, &sid)))
  return (error);


 for (u_int i = 0; i < core_idx; i++) {
  struct siba_core_id prev;

  if ((error = siba_eio_read_core_id(&sc->io, i, 0, &prev)))
   return (error);


  if (sid.core_info.vendor == prev.core_info.vendor &&
      sid.core_info.device == prev.core_info.device)
   sid.core_info.unit++;
 }

 *result = sid;
 return (0);
}
