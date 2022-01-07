
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_3__ {scalar_t__ core_unit; } ;
struct TYPE_4__ {TYPE_1__ match; } ;
typedef struct bhnd_core_match {TYPE_2__ m; } const bhnd_core_match ;
struct bhnd_core_info {scalar_t__ vendor; scalar_t__ device; int unit; } ;
struct bcma_erom_core {scalar_t__ vendor; scalar_t__ device; } ;
struct bcma_erom {int dummy; } ;
typedef int bus_size_t ;


 int BCMA_EROM_ENTRY_TYPE_CORE ;
 scalar_t__ UINT_MAX ;
 int bcma_erom_parse_core (struct bcma_erom*,struct bcma_erom_core*) ;
 int bcma_erom_reset (struct bcma_erom*) ;
 int bcma_erom_seek (struct bcma_erom*,int ) ;
 int bcma_erom_seek_next (struct bcma_erom*,int ) ;
 int bcma_erom_tell (struct bcma_erom*) ;
 int bcma_erom_to_core_info (struct bcma_erom_core*,scalar_t__,int ,struct bhnd_core_info*) ;
 int bhnd_core_matches (struct bhnd_core_info*,struct bhnd_core_match const*) ;

__attribute__((used)) static int
bcma_erom_seek_matching_core(struct bcma_erom *sc,
    const struct bhnd_core_match *desc, struct bhnd_core_info *core)
{
 struct bhnd_core_match imatch;
 bus_size_t core_offset, next_offset;
 int error;


 bcma_erom_reset(sc);


 imatch = *desc;
 imatch.m.match.core_unit = 0;


 for (u_int i = 0; i < UINT_MAX; i++) {
  struct bcma_erom_core ec;
  struct bhnd_core_info ci;


  error = bcma_erom_seek_next(sc, BCMA_EROM_ENTRY_TYPE_CORE);
  if (error)
   return (error);


  core_offset = bcma_erom_tell(sc);


  if ((error = bcma_erom_parse_core(sc, &ec)))
   return (error);

  bcma_erom_to_core_info(&ec, i, 0, &ci);


  if (!bhnd_core_matches(&ci, &imatch))
   continue;


  next_offset = bcma_erom_tell(sc);
  bcma_erom_reset(sc);
  for (u_int j = 0; j < i; j++) {

   error = bcma_erom_seek_next(sc,
       BCMA_EROM_ENTRY_TYPE_CORE);
   if (error)
    return (error);

   if ((error = bcma_erom_parse_core(sc, &ec)))
    return (error);


   if (ec.vendor == ci.vendor && ec.device == ci.device)
    ci.unit++;
  }


  if (!bhnd_core_matches(&ci, desc)) {

   bcma_erom_seek(sc, next_offset);
   continue;
  }



  bcma_erom_seek(sc, core_offset);
  if (core != ((void*)0))
   *core = ci;

  return (0);
 }


 return (error);
}
