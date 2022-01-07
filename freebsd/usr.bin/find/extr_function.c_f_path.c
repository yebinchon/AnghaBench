
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fts_path; } ;
struct TYPE_5__ {int flags; int c_data; } ;
typedef TYPE_1__ PLAN ;
typedef TYPE_2__ FTSENT ;


 int FNM_CASEFOLD ;
 int F_IGNCASE ;
 int fnmatch (int ,int ,int ) ;

int
f_path(PLAN *plan, FTSENT *entry)
{
 return !fnmatch(plan->c_data, entry->fts_path,
     plan->flags & F_IGNCASE ? FNM_CASEFOLD : 0);
}
