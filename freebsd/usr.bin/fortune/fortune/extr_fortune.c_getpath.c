
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * FORTDIR ;
 int * Fortune_path ;
 char** Fortune_path_arr ;
 scalar_t__ calloc (int,int) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int * getenv (char*) ;
 scalar_t__ is_dir (char*) ;
 int stderr ;
 void* strdup (int *) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static void
getpath(void)
{
 int nstr, foundenv;
 char *pch, **ppch, *str, *path;

 foundenv = 1;
 Fortune_path = getenv("FORTUNE_PATH");
 if (Fortune_path == ((void*)0)) {
  Fortune_path = FORTDIR;
  foundenv = 0;
 }
 path = strdup(Fortune_path);

 for (nstr = 2, pch = path; *pch != '\0'; pch++) {
  if (*pch == ':')
   nstr++;
 }

 ppch = Fortune_path_arr = (char **)calloc(nstr, sizeof(char *));

 nstr = 0;
 str = strtok(path, ":");
 while (str) {
  if (is_dir(str)) {
   nstr++;
   *ppch++ = str;
  }
  str = strtok(((void*)0), ":");
 }

 if (nstr == 0) {
  if (foundenv == 1) {
   fprintf(stderr,
       "fortune: FORTUNE_PATH: None of the specified "
       "directories found.\n");
   exit(1);
  }
  free(path);
  Fortune_path_arr[0] = strdup(FORTDIR);
 }
}
