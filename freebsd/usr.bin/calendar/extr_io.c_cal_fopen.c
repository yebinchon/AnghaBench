
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char** calendarHomes ;
 scalar_t__ chdir (char*) ;
 int * fopen (char const*,char*) ;
 char* getenv (char*) ;
 unsigned int nitems (char**) ;
 int warnx (char*,...) ;

__attribute__((used)) static FILE *
cal_fopen(const char *file)
{
 FILE *fp;
 char *home = getenv("HOME");
 unsigned int i;

 if (home == ((void*)0) || *home == '\0') {
  warnx("Cannot get home directory");
  return (((void*)0));
 }

 if (chdir(home) != 0) {
  warnx("Cannot enter home directory");
  return (((void*)0));
 }

 for (i = 0; i < nitems(calendarHomes); i++) {
  if (chdir(calendarHomes[i]) != 0)
   continue;

  if ((fp = fopen(file, "r")) != ((void*)0))
   return (fp);
 }

 warnx("can't open calendar file \"%s\"", file);

 return (((void*)0));
}
