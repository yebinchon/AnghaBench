
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bhndb_softc {int dev; int parent_dev; } ;
struct bhndb_hw {int * hw_reqs; } ;
struct bhnd_core_info {int dummy; } ;


 struct bhndb_hw* BHNDB_BUS_GET_HARDWARE_TABLE (int ,int ) ;
 int ENOENT ;
 int bhndb_hw_matches (struct bhndb_softc*,struct bhnd_core_info*,int ,struct bhndb_hw const*) ;

__attribute__((used)) static int
bhndb_find_hwspec(struct bhndb_softc *sc, struct bhnd_core_info *cores,
    u_int ncores, const struct bhndb_hw **hw)
{
 const struct bhndb_hw *next, *hw_table;


 hw_table = BHNDB_BUS_GET_HARDWARE_TABLE(sc->parent_dev, sc->dev);
 for (next = hw_table; next->hw_reqs != ((void*)0); next++) {
  if (!bhndb_hw_matches(sc, cores, ncores, next))
   continue;


  *hw = next;
  return (0);
 }

 return (ENOENT);
}
