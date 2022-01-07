
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {size_t d_namlen; int d_name; } ;
typedef int DIR ;


 int closedir (int *) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 size_t strlen (char const*) ;
 int version_number (char const*,int ,size_t) ;

__attribute__((used)) static int
max_backup_version(const char *file, const char *dir)
{
 DIR *dirp;
 struct dirent *dp;
 int highest_version, this_version;
 size_t file_name_length;

 dirp = opendir(dir);
 if (dirp == ((void*)0))
  return 0;

 highest_version = 0;
 file_name_length = strlen(file);

 while ((dp = readdir(dirp)) != ((void*)0)) {
  if (dp->d_namlen <= file_name_length)
   continue;

  this_version = version_number(file, dp->d_name, file_name_length);
  if (this_version > highest_version)
   highest_version = this_version;
 }
 closedir(dirp);
 return highest_version;
}
