
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_regwin {scalar_t__ win_type; } ;
typedef scalar_t__ bhndb_regwin_type_t ;


 scalar_t__ BHNDB_REGWIN_T_INVALID ;

size_t
bhndb_regwin_count(const struct bhndb_regwin *table,
    bhndb_regwin_type_t type)
{
 const struct bhndb_regwin *rw;
 size_t count;

 count = 0;
 for (rw = table; rw->win_type != BHNDB_REGWIN_T_INVALID; rw++) {
  if (type == BHNDB_REGWIN_T_INVALID || rw->win_type == type)
   count++;
 }

 return (count);
}
