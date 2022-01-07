
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_ISDIR (int ) ;
 scalar_t__ lstat (char*,struct stat*) ;

__attribute__((used)) static int
check_dirpath(char *dirp)
{
 char *cp;
 int ret = 1;
 struct stat sb;

 cp = dirp + 1;
 while (*cp && ret) {
  if (*cp == '/') {
   *cp = '\0';
   if (lstat(dirp, &sb) < 0 || !S_ISDIR(sb.st_mode))
    ret = 0;
   *cp = '/';
  }
  cp++;
 }
 if (lstat(dirp, &sb) < 0 || !S_ISDIR(sb.st_mode))
  ret = 0;
 return (ret);
}
