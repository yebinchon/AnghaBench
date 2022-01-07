
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct pmcstat_pmcrecord {int dummy; } ;
typedef int pmcstat_interned_string ;
typedef int fullpath ;
struct TYPE_2__ {char* pa_samplesdir; } ;


 int EX_OSERR ;
 int PATH_MAX ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRWXU ;
 scalar_t__ S_ISDIR (int ) ;
 int S_IXGRP ;
 int S_IXOTH ;
 TYPE_1__ args ;
 int err (int ,char*,char*) ;
 scalar_t__ mkdir (char*,int) ;
 char* pmcstat_string_unintern (int ) ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;

void
pmcpl_gmon_newpmc(pmcstat_interned_string ps, struct pmcstat_pmcrecord *pr)
{
 struct stat st;
 char fullpath[PATH_MAX];

 (void) pr;





 (void) snprintf(fullpath, sizeof(fullpath), "%s/%s", args.pa_samplesdir,
     pmcstat_string_unintern(ps));


 if (stat(fullpath, &st) == 0 && S_ISDIR(st.st_mode))
  return;

 if (mkdir(fullpath, S_IRWXU|S_IRGRP|S_IXGRP|S_IROTH|S_IXOTH) < 0)
  err(EX_OSERR, "ERROR: Cannot create directory \"%s\"",
      fullpath);
}
