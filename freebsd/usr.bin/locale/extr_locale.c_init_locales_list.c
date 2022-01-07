
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct dirent {char* d_name; } ;
struct TYPE_5__ {int sl_cur; int sl_str; } ;
typedef int DIR ;


 size_t NBOGUS ;
 int _PathLocale ;
 scalar_t__ __detect_path_locale () ;
 int * boguslocales ;
 int closedir (int *) ;
 int err (int,char*,...) ;
 TYPE_1__* locales ;
 int * opendir (int ) ;
 int qsort (int ,int ,int,int ) ;
 struct dirent* readdir (int *) ;
 int scmp ;
 int sl_add (TYPE_1__*,int ) ;
 int * sl_find (TYPE_1__*,char*) ;
 TYPE_1__* sl_init () ;
 int strdup (char*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char*,int ,int ) ;

void
init_locales_list(void)
{
 DIR *dirp;
 struct dirent *dp;
 size_t i;
 int bogus;


 if (locales != ((void*)0))
  return;


 locales = sl_init();
 if (locales == ((void*)0))
  err(1, "could not allocate memory");


 if (__detect_path_locale() != 0)
  err(1, "unable to find locales storage");


 dirp = opendir(_PathLocale);
 if (dirp == ((void*)0))
  err(1, "could not open directory '%s'", _PathLocale);


 while ((dp = readdir(dirp)) != ((void*)0)) {
  if (*(dp->d_name) == '.')
   continue;
  for (bogus = i = 0; i < NBOGUS; i++)
   if (strncmp(dp->d_name, boguslocales[i],
       strlen(boguslocales[i])) == 0)
    bogus = 1;
  if (!bogus)
   sl_add(locales, strdup(dp->d_name));
 }
 closedir(dirp);





 if (sl_find(locales, "POSIX") == ((void*)0))
  sl_add(locales, strdup("POSIX"));

 if (sl_find(locales, "C") == ((void*)0))
  sl_add(locales, strdup("C"));


 qsort(locales->sl_str, locales->sl_cur, sizeof(char *), scmp);
}
