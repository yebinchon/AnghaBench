
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dinfo; } ;
struct TYPE_4__ {int generation; int numdevs; } ;


 scalar_t__ BOOT ;
 int MAXDRIVES ;
 scalar_t__ RUN ;
 scalar_t__ TIME ;
 int copyinfo (int *,int *) ;
 int cur_dev ;
 int devstat_errbuf ;
 int devstat_getdevs (int *,TYPE_2__*) ;
 int dscmd (char const*,char const*,int ,int *) ;
 int errx (int,char*,int ) ;
 int generation ;
 int getinfo (int *) ;
 int labelkre () ;
 int num_devices ;
 scalar_t__ prefix (char const*,char*) ;
 TYPE_2__ run_dev ;
 int s1 ;
 int s2 ;
 scalar_t__ state ;
 int z ;

int
cmdkre(const char *cmd, const char *args)
{
 int retval;

 if (prefix(cmd, "run")) {
  retval = 1;
  copyinfo(&s2, &s1);
  switch (devstat_getdevs(((void*)0), &run_dev)) {
  case -1:
   errx(1, "%s", devstat_errbuf);
   break;
  case 1:
   num_devices = run_dev.dinfo->numdevs;
   generation = run_dev.dinfo->generation;
   retval = dscmd("refresh", ((void*)0), MAXDRIVES, &cur_dev);
   if (retval == 2)
    labelkre();
   break;
  default:
   break;
  }
  state = RUN;
  return (retval);
 }
 if (prefix(cmd, "boot")) {
  state = BOOT;
  copyinfo(&z, &s1);
  return (1);
 }
 if (prefix(cmd, "time")) {
  state = TIME;
  return (1);
 }
 if (prefix(cmd, "zero")) {
  retval = 1;
  if (state == RUN) {
   getinfo(&s1);
   switch (devstat_getdevs(((void*)0), &run_dev)) {
   case -1:
    errx(1, "%s", devstat_errbuf);
    break;
   case 1:
    num_devices = run_dev.dinfo->numdevs;
    generation = run_dev.dinfo->generation;
    retval = dscmd("refresh",((void*)0), MAXDRIVES, &cur_dev);
    if (retval == 2)
     labelkre();
    break;
   default:
    break;
   }
  }
  return (retval);
 }
 retval = dscmd(cmd, args, MAXDRIVES, &cur_dev);

 if (retval == 2)
  labelkre();

 return(retval);
}
