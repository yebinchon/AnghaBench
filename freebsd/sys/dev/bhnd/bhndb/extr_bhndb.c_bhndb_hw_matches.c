
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct bhndb_softc {int bus_dev; int dev; } ;
struct bhndb_hw {size_t num_hw_reqs; struct bhnd_core_match* hw_reqs; } ;
struct bhnd_core_match {int dummy; } ;
struct bhnd_core_info {int dummy; } ;


 scalar_t__ BHNDB_IS_CORE_DISABLED (int ,int ,struct bhnd_core_info*) ;
 int bhnd_core_matches (struct bhnd_core_info*,struct bhnd_core_match const*) ;

__attribute__((used)) static bool
bhndb_hw_matches(struct bhndb_softc *sc, struct bhnd_core_info *cores,
    u_int ncores, const struct bhndb_hw *hw)
{
 for (u_int i = 0; i < hw->num_hw_reqs; i++) {
  const struct bhnd_core_match *match;
  bool found;

  match = &hw->hw_reqs[i];
  found = 0;

  for (u_int d = 0; d < ncores; d++) {
   struct bhnd_core_info *core = &cores[d];

   if (BHNDB_IS_CORE_DISABLED(sc->dev, sc->bus_dev, core))
    continue;

   if (!bhnd_core_matches(core, match))
    continue;

   found = 1;
   break;
  }

  if (!found)
   return (0);
 }

 return (1);
}
