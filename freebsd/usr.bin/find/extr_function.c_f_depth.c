
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fts_level; } ;
struct TYPE_5__ {int flags; int d_data; } ;
typedef TYPE_1__ PLAN ;
typedef TYPE_2__ FTSENT ;


 int COMPARE (int ,int ) ;
 int F_DEPTH ;

int
f_depth(PLAN *plan, FTSENT *entry)
{
 if (plan->flags & F_DEPTH)
  COMPARE(entry->fts_level, plan->d_data);
 else
  return 1;
}
