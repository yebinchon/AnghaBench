
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ int8_t ;


 int EINVAL ;
 int set_tracer (scalar_t__,int,char const**) ;
 int show_tracers () ;
 char* str_to_number (char const*,int *,long long*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int tracer_onoff (scalar_t__,int) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
tracer_cmd(int argc, const char *argv[])
{
 long long val;
 uint8_t idx;
 char *s;

 if (argc == 0) {
  warnx("tracer: no arguments.");
  return (EINVAL);
 };


 if (strcmp(argv[0], "list") == 0) {
  if (argc != 1)
   warnx("trailing arguments after \"list\" ignored.");

  return show_tracers();
 }


 s = str_to_number(argv[0], ((void*)0), &val);
 if (*s || val > 0xff) {
  warnx("\"%s\" is neither an index nor a tracer subcommand.",
      argv[0]);
  return (EINVAL);
 }
 idx = (int8_t)val;


 if (argc == 2 && strcmp(argv[1], "disable") == 0)
  return tracer_onoff(idx, 0);


 if (argc == 2 && strcmp(argv[1], "enable") == 0)
  return tracer_onoff(idx, 1);


 return set_tracer(idx, argc - 1, argv + 1);
}
