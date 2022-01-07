
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ lstat (char*,struct stat*) ;
 int make_dir (char*,int) ;
 int mkdir (char*,int) ;
 char* strchr (char*,char) ;
 char* strrchr (char*,char) ;
 int unlink (char*) ;

__attribute__((used)) static void
make_parent(char *path)
{
 struct stat sb;
 char *sep;

 sep = strrchr(path, '/');
 if (sep == ((void*)0) || sep == path)
  return;
 *sep = '\0';
 if (lstat(path, &sb) == 0) {
  if (S_ISDIR(sb.st_mode)) {
   *sep = '/';
   return;
  }
  unlink(path);
 }
 make_parent(path);
 mkdir(path, 0755);
 *sep = '/';
}
