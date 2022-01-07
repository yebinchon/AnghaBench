
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int EACCES ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int X_OK ;
 int access (char const*,int) ;
 int errno ;
 scalar_t__ geteuid () ;
 scalar_t__ stat (char const*,struct stat*) ;

int git_access(const char *path, int mode)
{
 struct stat st;


 if (geteuid())
  return access(path, mode);

 if (stat(path, &st) < 0)
  return -1;


 if (!(mode & X_OK))
  return 0;




 if (st.st_mode & (S_IXUSR | S_IXGRP | S_IXOTH))
  return 0;

 errno = EACCES;
 return -1;
}
