
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct statinfo {TYPE_1__* dinfo; } ;
struct TYPE_4__ {int unit_number; int device_name; } ;
struct TYPE_3__ {TYPE_2__* devices; } ;


 int CMDLINE ;
 scalar_t__ DS_MATCHTYPE_NONE ;
 scalar_t__ DS_MATCHTYPE_PATTERN ;
 scalar_t__ DS_MATCHTYPE_SPEC ;
 int DS_SELECT_ADD ;
 int DS_SELECT_ADDONLY ;
 int DS_SELECT_ONLY ;
 int DS_SELECT_REMOVE ;
 int clrtoeol () ;
 int dev_select ;
 int devstat_errbuf ;
 int devstat_selectdevs (int *,int *,int *,int *,int ,TYPE_2__*,int,int *,int ,int *,int ,int ,int,int ) ;
 int dsmatchselect (char const*,int ,int,struct statinfo*) ;
 int dsselect (char const*,int ,int,struct statinfo*) ;
 int generation ;
 scalar_t__ last_type ;
 int * matches ;
 int move (int ,int ) ;
 int num_devices ;
 int num_devices_specified ;
 int num_matches ;
 int num_selected ;
 int num_selections ;
 scalar_t__ prefix (char const*,char*) ;
 int printw (char*,int ,int ) ;
 int select_generation ;
 int * specified_devices ;
 int warnx (char*,int ) ;

int
dscmd(const char *cmd, const char *args, int maxshowdevs, struct statinfo *s1)
{
 int retval;

 if (prefix(cmd, "display") || prefix(cmd, "add"))
  return(dsselect(args, DS_SELECT_ADDONLY, maxshowdevs, s1));
 if (prefix(cmd, "ignore") || prefix(cmd, "delete"))
  return(dsselect(args, DS_SELECT_REMOVE, maxshowdevs, s1));
 if (prefix(cmd, "show") || prefix(cmd, "only"))
  return(dsselect(args, DS_SELECT_ONLY, maxshowdevs, s1));
 if (prefix(cmd, "type") || prefix(cmd, "match"))
  return(dsmatchselect(args, DS_SELECT_ONLY, maxshowdevs, s1));
 if (prefix(cmd, "refresh")) {
  retval = devstat_selectdevs(&dev_select, &num_selected,
      &num_selections, &select_generation, generation,
      s1->dinfo->devices, num_devices,
      (last_type ==DS_MATCHTYPE_PATTERN) ? matches : ((void*)0),
      (last_type ==DS_MATCHTYPE_PATTERN) ? num_matches : 0,
      (last_type == DS_MATCHTYPE_SPEC) ?specified_devices : ((void*)0),
      (last_type == DS_MATCHTYPE_SPEC) ?num_devices_specified : 0,
      (last_type == DS_MATCHTYPE_NONE) ? DS_SELECT_ADD :
      DS_SELECT_ADDONLY, maxshowdevs, 0);
  if (retval == -1) {
   warnx("%s", devstat_errbuf);
   return(0);
  } else if (retval == 1)
   return(2);
 }
 if (prefix(cmd, "drives")) {
  int i;
  move(CMDLINE, 0);
  clrtoeol();
  for (i = 0; i < num_devices; i++) {
   printw("%s%d ", s1->dinfo->devices[i].device_name,
          s1->dinfo->devices[i].unit_number);
  }
  return(1);
 }
 return(0);
}
