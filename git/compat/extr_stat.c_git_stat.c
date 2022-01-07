
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int mode_native_to_git (int ) ;
 int stat (char const*,struct stat*) ;

int git_stat(const char *path, struct stat *buf)
{
 int rc = stat(path, buf);
 if (rc == 0)
  buf->st_mode = mode_native_to_git(buf->st_mode);
 return rc;
}
