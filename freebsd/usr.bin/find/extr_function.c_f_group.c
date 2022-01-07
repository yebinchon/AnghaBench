
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* fts_statp; } ;
struct TYPE_7__ {int g_data; } ;
struct TYPE_6__ {int st_gid; } ;
typedef TYPE_2__ PLAN ;
typedef TYPE_3__ FTSENT ;


 int COMPARE (int ,int ) ;

int
f_group(PLAN *plan, FTSENT *entry)
{
 COMPARE(entry->fts_statp->st_gid, plan->g_data);
}
