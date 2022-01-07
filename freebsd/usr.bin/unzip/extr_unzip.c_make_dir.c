
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ EEXIST ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ errno ;
 int error (char*,char const*) ;
 scalar_t__ lstat (char const*,struct stat*) ;
 scalar_t__ mkdir (char const*,int) ;
 int unlink (char const*) ;

__attribute__((used)) static void
make_dir(const char *path, int mode)
{
 struct stat sb;

 if (lstat(path, &sb) == 0) {
  if (S_ISDIR(sb.st_mode))
   return;
  (void)unlink(path);
 }
 if (mkdir(path, mode) != 0 && errno != EEXIST)
  error("mkdir('%s')", path);
}
