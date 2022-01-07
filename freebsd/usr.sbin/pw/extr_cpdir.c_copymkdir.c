
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct stat {int st_mode; int st_flags; } ;
struct dirent {char* d_name; } ;
typedef int ssize_t ;
typedef int mode_t ;
typedef int lnk ;
typedef int gid_t ;
typedef int copybuf ;
typedef int DIR ;


 int AT_SYMLINK_NOFOLLOW ;
 scalar_t__ EEXIST ;
 int MAXPATHLEN ;
 int O_CREAT ;
 int O_DIRECTORY ;
 int O_EXCL ;
 int O_RDONLY ;
 int O_RDWR ;
 scalar_t__ S_ISDIR (int) ;
 scalar_t__ S_ISLNK (int) ;
 int S_ISREG (int) ;
 int _DEF_DIRMODE ;
 int chflagsat (int,char const*,int,int ) ;
 int close (int) ;
 int closedir (int *) ;
 scalar_t__ errno ;
 int fchflags (int,int) ;
 int fchown (int,int ,int ) ;
 int fchownat (int,char const*,int ,int ,int ) ;
 int * fdopendir (int) ;
 int fstatat (int,char*,struct stat*,int ) ;
 scalar_t__ mkdirat (int,char const*,int) ;
 int openat (int,char const*,int,...) ;
 int read (int,char*,int) ;
 struct dirent* readdir (int *) ;
 int readlinkat (int,char*,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int symlinkat (char*,int,char*) ;
 int warn (char*,char const*) ;
 int write (int,char*,int ) ;

void
copymkdir(int rootfd, char const * dir, int skelfd, mode_t mode, uid_t uid,
    gid_t gid, int flags)
{
 char *p, lnk[MAXPATHLEN], copybuf[4096];
 int len, homefd, srcfd, destfd;
 ssize_t sz;
 struct stat st;
 struct dirent *e;
 DIR *d;

 if (*dir == '/')
  dir++;

 if (mkdirat(rootfd, dir, mode) != 0 && errno != EEXIST) {
  warn("mkdir(%s)", dir);
  return;
 }
 fchownat(rootfd, dir, uid, gid, AT_SYMLINK_NOFOLLOW);
 if (flags > 0)
  chflagsat(rootfd, dir, flags, AT_SYMLINK_NOFOLLOW);

 if (skelfd == -1)
  return;

 homefd = openat(rootfd, dir, O_DIRECTORY);
 if ((d = fdopendir(skelfd)) == ((void*)0)) {
  close(skelfd);
  close(homefd);
  return;
 }

 while ((e = readdir(d)) != ((void*)0)) {
  if (strcmp(e->d_name, ".") == 0 || strcmp(e->d_name, "..") == 0)
   continue;

  p = e->d_name;
  if (fstatat(skelfd, p, &st, AT_SYMLINK_NOFOLLOW) == -1)
   continue;

  if (strncmp(p, "dot.", 4) == 0)
   p += 3;

  if (S_ISDIR(st.st_mode)) {
   copymkdir(homefd, p, openat(skelfd, e->d_name, O_DIRECTORY),
       st.st_mode & _DEF_DIRMODE, uid, gid, st.st_flags);
   continue;
  }

  if (S_ISLNK(st.st_mode) &&
      (len = readlinkat(skelfd, e->d_name, lnk, sizeof(lnk) -1))
      != -1) {
   lnk[len] = '\0';
   symlinkat(lnk, homefd, p);
   fchownat(homefd, p, uid, gid, AT_SYMLINK_NOFOLLOW);
   continue;
  }

  if (!S_ISREG(st.st_mode))
   continue;

  if ((srcfd = openat(skelfd, e->d_name, O_RDONLY)) == -1)
   continue;
  destfd = openat(homefd, p, O_RDWR | O_CREAT | O_EXCL,
      st.st_mode);
  if (destfd == -1) {
   close(srcfd);
   continue;
  }

  while ((sz = read(srcfd, copybuf, sizeof(copybuf))) > 0)
   write(destfd, copybuf, sz);

  close(srcfd);



  fchown(destfd, uid, gid);
  fchflags(destfd, st.st_flags);
  close(destfd);
 }
 closedir(d);
}
