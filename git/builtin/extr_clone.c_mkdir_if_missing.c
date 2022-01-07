
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int mode_t ;


 scalar_t__ EEXIST ;
 int S_ISDIR (int ) ;
 int _ (char*) ;
 int die (int ,char const*) ;
 int die_errno (int ,char const*) ;
 scalar_t__ errno ;
 int mkdir (char const*,int ) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static void mkdir_if_missing(const char *pathname, mode_t mode)
{
 struct stat st;

 if (!mkdir(pathname, mode))
  return;

 if (errno != EEXIST)
  die_errno(_("failed to create directory '%s'"), pathname);
 else if (stat(pathname, &st))
  die_errno(_("failed to stat '%s'"), pathname);
 else if (!S_ISDIR(st.st_mode))
  die(_("%s exists and is not a directory"), pathname);
}
