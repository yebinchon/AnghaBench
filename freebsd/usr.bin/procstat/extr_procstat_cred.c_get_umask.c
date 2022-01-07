
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct procstat {int dummy; } ;
struct kinfo_proc {int dummy; } ;


 scalar_t__ procstat_getumask (struct procstat*,struct kinfo_proc*,int*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
get_umask(struct procstat *procstat, struct kinfo_proc *kipp)
{
 u_short fd_cmask;
 static char umask[4];

 if (procstat_getumask(procstat, kipp, &fd_cmask) == 0) {
  snprintf(umask, 4, "%03o", fd_cmask);
  return (umask);
 } else {
  return ("-");
 }
}
