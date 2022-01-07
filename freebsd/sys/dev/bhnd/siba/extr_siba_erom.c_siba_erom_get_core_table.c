
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {size_t ncores; } ;
struct siba_erom {TYPE_1__ io; } ;
struct bhnd_core_info {scalar_t__ vendor; scalar_t__ device; int unit; } ;
struct siba_core_id {struct bhnd_core_info core_info; } ;
typedef int bhnd_erom_t ;


 int ENOMEM ;
 int M_BHND ;
 int M_NOWAIT ;
 struct bhnd_core_info* mallocarray (size_t,int,int ,int ) ;
 int siba_eio_read_core_id (TYPE_1__*,size_t,int ,struct siba_core_id*) ;

__attribute__((used)) static int
siba_erom_get_core_table(bhnd_erom_t *erom, struct bhnd_core_info **cores,
    u_int *num_cores)
{
 struct siba_erom *sc;
 struct bhnd_core_info *out;
 int error;

 sc = (struct siba_erom *)erom;


 out = mallocarray(sc->io.ncores, sizeof(*out), M_BHND, M_NOWAIT);
 if (out == ((void*)0))
  return (ENOMEM);

 *cores = out;
 *num_cores = sc->io.ncores;


 for (u_int i = 0; i < sc->io.ncores; i++) {
  struct siba_core_id sid;


  if ((error = siba_eio_read_core_id(&sc->io, i, 0, &sid)))
   return (error);

  out[i] = sid.core_info;


  for (u_int j = 0; j < i; j++) {
   if (out[j].vendor == out[i].vendor &&
       out[j].device == out[i].device)
    out[i].unit++;
  }
 }

 return (0);
}
