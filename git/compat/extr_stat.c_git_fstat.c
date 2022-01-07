
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int fstat (int,struct stat*) ;
 int mode_native_to_git (int ) ;

int git_fstat(int fd, struct stat *buf)
{
 int rc = fstat(fd, buf);
 if (rc == 0)
  buf->st_mode = mode_native_to_git(buf->st_mode);
 return rc;
}
