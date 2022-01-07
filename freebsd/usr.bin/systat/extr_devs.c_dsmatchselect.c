
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct statinfo {TYPE_1__* dinfo; } ;
typedef int devstat_select_mode ;
struct TYPE_2__ {int devices; } ;


 int DS_MATCHTYPE_PATTERN ;
 int dev_select ;
 scalar_t__ devstat_buildmatch (char*,char**,scalar_t__*) ;
 int devstat_errbuf ;
 int devstat_selectdevs (int *,int *,int *,int *,int ,int ,int ,char*,scalar_t__,int *,int ,int ,int,int ) ;
 int err (int,char*) ;
 int free (char*) ;
 int generation ;
 int last_type ;
 char* matches ;
 int num_devices ;
 scalar_t__ num_matches ;
 int num_selected ;
 int num_selections ;
 int select_generation ;
 char* strdup (char const*) ;
 char* strsep (char**,char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
dsmatchselect(const char *args, devstat_select_mode select_mode, int maxshowdevs,
       struct statinfo *s1)
{
 char **tempstr, *tmpstr, *tmpstr1;
 char *tstr[100];
 int num_args = 0;
 int i;
 int retval = 0;

 if (!args) {
  warnx("dsmatchselect: no arguments");
  return(1);
 }





 tmpstr = tmpstr1 = strdup(args);
 for (tempstr = tstr, num_args = 0;
      (*tempstr = strsep(&tmpstr1, "|")) != ((void*)0) && (num_args < 100);
      num_args++)
  if (**tempstr != '\0')
   if (++tempstr >= &tstr[100])
    break;
 free(tmpstr);

 if (num_args > 99) {
  warnx("dsmatchselect: too many match arguments");
  return(0);
 }





 if (num_matches > 0) {
  free(matches);
  matches = ((void*)0);
  num_matches = 0;
 }

 for (i = 0; i < num_args; i++) {
  if (devstat_buildmatch(tstr[i], &matches, &num_matches) != 0) {
   warnx("%s", devstat_errbuf);
   return(0);
  }
 }
 if (num_args > 0) {

  last_type = DS_MATCHTYPE_PATTERN;

  retval = devstat_selectdevs(&dev_select, &num_selected,
      &num_selections, &select_generation, generation,
      s1->dinfo->devices, num_devices, matches, num_matches,
      ((void*)0), 0, select_mode, maxshowdevs, 0);
  if (retval == -1)
   err(1, "device selection error");
  else if (retval == 1)
   return(2);
 }
 return(1);
}
