
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_8__ {TYPE_1__* fts_statp; } ;
struct TYPE_7__ {int o_data; } ;
struct TYPE_6__ {int st_size; } ;
typedef TYPE_2__ PLAN ;
typedef TYPE_3__ FTSENT ;


 int COMPARE (int,int ) ;
 int FIND_SIZE ;
 scalar_t__ divsize ;

int
f_size(PLAN *plan, FTSENT *entry)
{
 off_t size;

 size = divsize ? (entry->fts_statp->st_size + FIND_SIZE - 1) /
     FIND_SIZE : entry->fts_statp->st_size;
 COMPARE(size, plan->o_data);
}
