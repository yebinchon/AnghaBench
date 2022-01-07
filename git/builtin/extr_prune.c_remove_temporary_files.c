
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
typedef int DIR ;


 int closedir (int *) ;
 int fprintf (int ,char*,char const*) ;
 int mkpath (char*,char const*,int ) ;
 int * opendir (char const*) ;
 int prune_tmp_file (int ) ;
 struct dirent* readdir (int *) ;
 scalar_t__ starts_with (int ,char*) ;
 int stderr ;

__attribute__((used)) static void remove_temporary_files(const char *path)
{
 DIR *dir;
 struct dirent *de;

 dir = opendir(path);
 if (!dir) {
  fprintf(stderr, "Unable to open directory %s\n", path);
  return;
 }
 while ((de = readdir(dir)) != ((void*)0))
  if (starts_with(de->d_name, "tmp_"))
   prune_tmp_file(mkpath("%s/%s", path, de->d_name));
 closedir(dir);
}
