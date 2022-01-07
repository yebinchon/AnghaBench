
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_10__ {TYPE_1__* fts_statp; } ;
struct TYPE_8__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_9__ {int flags; TYPE_2__ t_data; } ;
struct TYPE_7__ {struct timespec st_mtim; struct timespec st_birthtim; struct timespec st_atim; struct timespec st_ctim; } ;
typedef TYPE_3__ PLAN ;
typedef TYPE_4__ FTSENT ;


 int F_TIME_A ;
 int F_TIME_B ;
 int F_TIME_C ;

int
f_newer(PLAN *plan, FTSENT *entry)
{
 struct timespec ft;

 if (plan->flags & F_TIME_C)
  ft = entry->fts_statp->st_ctim;






 else
  ft = entry->fts_statp->st_mtim;
 return (ft.tv_sec > plan->t_data.tv_sec ||
     (ft.tv_sec == plan->t_data.tv_sec &&
     ft.tv_nsec > plan->t_data.tv_nsec));
}
