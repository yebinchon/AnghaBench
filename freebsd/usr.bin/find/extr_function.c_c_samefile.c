
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_ino; } ;
struct TYPE_4__ {int i_data; } ;
typedef TYPE_1__ PLAN ;
typedef int OPTION ;


 int FTS_NOSTAT ;
 int FTS_PHYSICAL ;
 int err (int,char*,char*) ;
 int ftsoptions ;
 int lstat (char*,struct stat*) ;
 char* nextarg (int *,char***) ;
 TYPE_1__* palloc (int *) ;
 int stat (char*,struct stat*) ;

PLAN *
c_samefile(OPTION *option, char ***argvp)
{
 char *fn;
 PLAN *new;
 struct stat sb;
 int error;

 fn = nextarg(option, argvp);
 ftsoptions &= ~FTS_NOSTAT;

 new = palloc(option);
 if (ftsoptions & FTS_PHYSICAL)
  error = lstat(fn, &sb);
 else
  error = stat(fn, &sb);
 if (error != 0)
  err(1, "%s", fn);
 new->i_data = sb.st_ino;
 return new;
}
