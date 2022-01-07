
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_10__ {TYPE_1__* fts_statp; } ;
struct TYPE_8__ {int tv_sec; } ;
struct TYPE_9__ {int flags; TYPE_2__ t_data; } ;
struct TYPE_7__ {int st_atime; int st_birthtime; int st_ctime; int st_mtime; } ;
typedef TYPE_3__ PLAN ;
typedef TYPE_4__ FTSENT ;


 int COMPARE (int,int ) ;
 int F_EXACTTIME ;
 int F_TIME_A ;
 int F_TIME_B ;
 int F_TIME_C ;
 int now ;

int
f_Xtime(PLAN *plan, FTSENT *entry)
{
 time_t xtime;

 if (plan->flags & F_TIME_A)
  xtime = entry->fts_statp->st_atime;




 else if (plan->flags & F_TIME_C)
  xtime = entry->fts_statp->st_ctime;
 else
  xtime = entry->fts_statp->st_mtime;

 if (plan->flags & F_EXACTTIME)
  COMPARE(now - xtime, plan->t_data.tv_sec);
 else
  COMPARE((now - xtime + 86400 - 1) / 86400, plan->t_data.tv_sec);
}
