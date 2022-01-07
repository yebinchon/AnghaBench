
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_9__ {scalar_t__ tv_sec; int tv_nsec; } ;
struct stat {TYPE_1__ st_mtim; TYPE_1__ st_birthtim; TYPE_1__ st_atim; TYPE_1__ st_ctim; } ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {TYPE_1__ t_data; } ;
typedef TYPE_2__ PLAN ;
typedef TYPE_3__ OPTION ;


 int FTS_NOSTAT ;
 int FTS_PHYSICAL ;
 int F_TIME2_A ;
 int F_TIME2_B ;
 int F_TIME2_C ;
 int F_TIME2_T ;
 int err (int,char*,char*) ;
 int errx (int,char*,char*) ;
 int ftsoptions ;
 scalar_t__ get_date (char*) ;
 int lstat (char*,struct stat*) ;
 char* nextarg (TYPE_3__*,char***) ;
 TYPE_2__* palloc (TYPE_3__*) ;
 int stat (char*,struct stat*) ;

PLAN *
c_newer(OPTION *option, char ***argvp)
{
 char *fn_or_tspec;
 PLAN *new;
 struct stat sb;
 int error;

 fn_or_tspec = nextarg(option, argvp);
 ftsoptions &= ~FTS_NOSTAT;

 new = palloc(option);

 if (option->flags & F_TIME2_T) {
  new->t_data.tv_sec = get_date(fn_or_tspec);
  if (new->t_data.tv_sec == (time_t) -1)
   errx(1, "Can't parse date/time: %s", fn_or_tspec);

  new->t_data.tv_nsec = 999999999;
 } else {
  if (ftsoptions & FTS_PHYSICAL)
   error = lstat(fn_or_tspec, &sb);
  else
   error = stat(fn_or_tspec, &sb);
  if (error != 0)
   err(1, "%s", fn_or_tspec);
  if (option->flags & F_TIME2_C)
   new->t_data = sb.st_ctim;
  else if (option->flags & F_TIME2_A)
   new->t_data = sb.st_atim;




  else
   new->t_data = sb.st_mtim;
 }
 return new;
}
