
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct stat {scalar_t__ st_uid; int st_mode; } ;
struct dirent {char const* d_name; } ;
typedef int DIR ;


 int AT_REMOVEDIR ;
 int AT_SYMLINK_NOFOLLOW ;
 int O_DIRECTORY ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int closedir (int *) ;
 int * fdopendir (int) ;
 scalar_t__ fstatat (int,char const*,struct stat*,int ) ;
 int openat (int,char const*,int ) ;
 struct dirent* readdir (int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int unlinkat (int,char const*,int ) ;

void
rm_r(int rootfd, const char *path, uid_t uid)
{
 int dirfd;
 DIR *d;
 struct dirent *e;
 struct stat st;

 if (*path == '/')
  path++;

 dirfd = openat(rootfd, path, O_DIRECTORY);
 if (dirfd == -1) {
  return;
 }

 d = fdopendir(dirfd);
 while ((e = readdir(d)) != ((void*)0)) {
  if (strcmp(e->d_name, ".") == 0 || strcmp(e->d_name, "..") == 0)
   continue;

  if (fstatat(dirfd, e->d_name, &st, AT_SYMLINK_NOFOLLOW) != 0)
   continue;
  if (S_ISDIR(st.st_mode))
   rm_r(dirfd, e->d_name, uid);
  else if (S_ISLNK(st.st_mode) || st.st_uid == uid)
   unlinkat(dirfd, e->d_name, 0);
 }
 closedir(d);
 if (fstatat(rootfd, path, &st, AT_SYMLINK_NOFOLLOW) != 0)
  return;
 unlinkat(rootfd, path, S_ISDIR(st.st_mode) ? AT_REMOVEDIR : 0);
}
