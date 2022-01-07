
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_core_match {int dummy; } ;
struct bhnd_core_info {int dummy; } ;
struct bcma_erom {int dummy; } ;
typedef int bhnd_erom_t ;


 int bcma_erom_seek_matching_core (struct bcma_erom*,struct bhnd_core_match const*,struct bhnd_core_info*) ;

__attribute__((used)) static int
bcma_erom_lookup_core(bhnd_erom_t *erom, const struct bhnd_core_match *desc,
    struct bhnd_core_info *core)
{
 struct bcma_erom *sc = (struct bcma_erom *)erom;


 return (bcma_erom_seek_matching_core(sc, desc, core));
}
