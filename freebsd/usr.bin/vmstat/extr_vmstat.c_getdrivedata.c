
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct devinfo {int devices; int generation; int numdevs; } ;
struct TYPE_5__ {struct devinfo* dinfo; } ;
struct TYPE_4__ {struct devinfo* dinfo; } ;


 int DS_SELECT_ADD ;
 int DS_SELECT_ONLY ;
 scalar_t__ calloc (int,int) ;
 TYPE_2__ cur ;
 int da ;
 int * dev_select ;
 scalar_t__ devstat_buildmatch (int ,int *,scalar_t__*) ;
 char* devstat_errbuf ;
 int devstat_getdevs (int *,TYPE_2__*) ;
 int devstat_getnumdevs (int *) ;
 int devstat_selectdevs (int **,int *,int *,int *,int ,int ,int ,int ,scalar_t__,char**,int,int ,int,int ) ;
 int generation ;
 scalar_t__ isdigit (char) ;
 TYPE_1__ last ;
 char** malloc (int) ;
 int matches ;
 int maxshowdevs ;
 scalar_t__ nflag ;
 int num_devices ;
 int num_devices_specified ;
 scalar_t__ num_matches ;
 int num_selected ;
 int num_selections ;
 char** reallocf (char**,int) ;
 int select_generation ;
 int select_mode ;
 char** specified_devices ;
 int xo_errx (int,char*,char*) ;

__attribute__((used)) static char **
getdrivedata(char **argv)
{

 if ((num_devices = devstat_getnumdevs(((void*)0))) < 0)
  xo_errx(1, "%s", devstat_errbuf);

 cur.dinfo = (struct devinfo *)calloc(1, sizeof(struct devinfo));
 last.dinfo = (struct devinfo *)calloc(1, sizeof(struct devinfo));

 if (devstat_getdevs(((void*)0), &cur) == -1)
  xo_errx(1, "%s", devstat_errbuf);

 num_devices = cur.dinfo->numdevs;
 generation = cur.dinfo->generation;

 specified_devices = malloc(sizeof(char *));
 for (num_devices_specified = 0; *argv; ++argv) {
  if (isdigit(**argv))
   break;
  num_devices_specified++;
  specified_devices = reallocf(specified_devices,
      sizeof(char *) * num_devices_specified);
  if (specified_devices == ((void*)0)) {
   xo_errx(1, "%s", "reallocf (specified_devices)");
  }
  specified_devices[num_devices_specified - 1] = *argv;
 }
 dev_select = ((void*)0);

 if (nflag == 0 && maxshowdevs < num_devices_specified)
  maxshowdevs = num_devices_specified;
 if ((num_devices_specified == 0) && (num_matches == 0)) {
  if (devstat_buildmatch(da, &matches, &num_matches) != 0)
   xo_errx(1, "%s", devstat_errbuf);
  select_mode = DS_SELECT_ADD;
 } else
  select_mode = DS_SELECT_ONLY;






 if (devstat_selectdevs(&dev_select, &num_selected, &num_selections,
     &select_generation, generation, cur.dinfo->devices,
     num_devices, matches, num_matches, specified_devices,
     num_devices_specified, select_mode,
     maxshowdevs, 0) == -1)
  xo_errx(1, "%s", devstat_errbuf);

 return(argv);
}
