
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_6__ {scalar_t__ ncores; } ;
struct siba_erom {TYPE_3__ io; } ;
struct bhnd_core_info {scalar_t__ vendor; scalar_t__ device; int unit; } ;
struct siba_core_id {struct bhnd_core_info core_info; } ;
struct TYPE_4__ {scalar_t__ core_unit; } ;
struct TYPE_5__ {TYPE_1__ match; } ;
typedef struct bhnd_core_match {TYPE_2__ m; } const bhnd_core_match ;
typedef int bhnd_erom_t ;


 int ENOENT ;
 int bhnd_core_matches (struct bhnd_core_info*,struct bhnd_core_match const*) ;
 int siba_eio_read_core_id (TYPE_3__*,scalar_t__,int ,struct siba_core_id*) ;

__attribute__((used)) static int
siba_erom_lookup_core(bhnd_erom_t *erom, const struct bhnd_core_match *desc,
    struct bhnd_core_info *core)
{
 struct siba_erom *sc;
 struct bhnd_core_match imatch;
 int error;

 sc = (struct siba_erom *)erom;


 imatch = *desc;
 imatch.m.match.core_unit = 0;


 for (u_int i = 0; i < sc->io.ncores; i++) {
  struct siba_core_id sid;
  struct bhnd_core_info ci;


  if ((error = siba_eio_read_core_id(&sc->io, i, 0, &sid)))
   return (error);

  ci = sid.core_info;


  if (!bhnd_core_matches(&ci, &imatch))
   continue;


  for (u_int j = 0; j < i; j++) {
   error = siba_eio_read_core_id(&sc->io, j, 0, &sid);
   if (error)
    return (error);


   if (sid.core_info.vendor == ci.vendor &&
       sid.core_info.device == ci.device)
    ci.unit++;
  }


  if (!bhnd_core_matches(&ci, desc))
   continue;


  *core = ci;
  return (0);
 }


 return (ENOENT);
}
