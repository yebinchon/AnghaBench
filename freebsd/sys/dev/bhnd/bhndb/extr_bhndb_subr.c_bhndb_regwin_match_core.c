
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ class; scalar_t__ unit; } ;
struct TYPE_4__ {TYPE_1__ core; } ;
struct bhndb_regwin {scalar_t__ win_type; TYPE_2__ d; } ;
struct bhnd_core_info {scalar_t__ unit; } ;


 scalar_t__ BHNDB_REGWIN_T_CORE ;
 scalar_t__ bhnd_core_class (struct bhnd_core_info*) ;

bool
bhndb_regwin_match_core(const struct bhndb_regwin *regw,
    struct bhnd_core_info *core)
{

 if (regw->win_type != BHNDB_REGWIN_T_CORE)
  return (0);


 if (bhnd_core_class(core) != regw->d.core.class)
  return (0);


 if (core->unit != regw->d.core.unit)
  return (0);


 return (1);
}
