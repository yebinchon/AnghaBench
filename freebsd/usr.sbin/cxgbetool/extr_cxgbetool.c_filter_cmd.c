
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int EINVAL ;
 int del_filter (scalar_t__,int,int) ;
 int get_filter_mode (int) ;
 int set_filter (scalar_t__,int,char const**,int) ;
 int set_filter_mode (int,char const**) ;
 int show_filters (int) ;
 char* str_to_number (char const*,int *,long long*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
filter_cmd(int argc, const char *argv[], int hashfilter)
{
 long long val;
 uint32_t idx;
 char *s;

 if (argc == 0) {
  warnx("%sfilter: no arguments.", hashfilter ? "hash" : "");
  return (EINVAL);
 };


 if (strcmp(argv[0], "list") == 0) {
  if (argc != 1)
   warnx("trailing arguments after \"list\" ignored.");

  return show_filters(hashfilter);
 }


 if (argc == 1 && strcmp(argv[0], "mode") == 0)
  return get_filter_mode(hashfilter);


 if (!hashfilter && strcmp(argv[0], "mode") == 0)
  return set_filter_mode(argc - 1, argv + 1);


 s = str_to_number(argv[0], ((void*)0), &val);
 if (*s || val < 0 || val > 0xffffffffU) {
  if (hashfilter) {





   idx = (uint32_t) -1;
   goto setf;
  }
  warnx("\"%s\" is neither an index nor a filter subcommand.",
      argv[0]);
  return (EINVAL);
 }
 idx = (uint32_t) val;


 if ((argc == 2 || argc == 4) &&
     (strcmp(argv[1], "delete") == 0 || strcmp(argv[1], "clear") == 0)) {
  int prio = 0;

  if (argc == 4) {
   if (hashfilter) {
    warnx("stray arguments after \"%s\".", argv[1]);
    return (EINVAL);
   }

   if (strcmp(argv[2], "prio") != 0) {
    warnx("\"prio\" is the only valid keyword "
        "after \"%s\", found \"%s\" instead.",
        argv[1], argv[2]);
    return (EINVAL);
   }

   s = str_to_number(argv[3], ((void*)0), &val);
   if (*s || val < 0 || val > 1) {
    warnx("%s \"%s\"; must be \"0\" or \"1\".",
        argv[2], argv[3]);
    return (EINVAL);
   }
   prio = (int)val;
  }
  return del_filter(idx, prio, hashfilter);
 }


 argc--;
 argv++;

setf:

 return set_filter(idx, argc, argv, hashfilter);
}
