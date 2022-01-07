
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bhndb_regwin {int dummy; } ;
typedef int bus_size_t ;
typedef int bhnd_port_type ;
typedef int bhnd_devclass_t ;


 int BHNDB_REGWIN_T_DYN ;
 struct bhndb_regwin* bhndb_regwin_find_core (struct bhndb_regwin const*,int ,int,int ,int ,int ,int ,int ) ;
 struct bhndb_regwin const* bhndb_regwin_find_type (struct bhndb_regwin const*,int ,int ) ;

const struct bhndb_regwin *
bhndb_regwin_find_best(const struct bhndb_regwin *table,
    bhnd_devclass_t class, int unit, bhnd_port_type port_type, u_int port,
    u_int region, bus_size_t offset, bus_size_t min_size)
{
 const struct bhndb_regwin *rw;


 rw = bhndb_regwin_find_core(table, class, unit, port_type,
     port, region, offset, min_size);
 if (rw != ((void*)0))
  return (rw);


 return (bhndb_regwin_find_type(table, BHNDB_REGWIN_T_DYN, min_size));
}
