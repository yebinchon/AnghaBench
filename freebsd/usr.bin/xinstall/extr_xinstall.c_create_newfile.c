
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_flags; } ;


 int EX_OSERR ;
 int MAXPATHLEN ;
 int NOCHANGEBITS ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int S_IRUSR ;
 int S_IWUSR ;
 int chflags (char const*,int) ;
 scalar_t__ dobackup ;
 int err (int ,char*,char const*,char*) ;
 int errno ;
 int errx (int ,char*,char const*) ;
 int open (char const*,int,int) ;
 int printf (char*,char const*,char*) ;
 scalar_t__ rename (char const*,char*) ;
 scalar_t__ snprintf (char*,int,char*,char const*,char const*) ;
 size_t strlen (char const*) ;
 char const* suffix ;
 scalar_t__ unlink (char const*) ;
 scalar_t__ verbose ;

__attribute__((used)) static int
create_newfile(const char *path, int target, struct stat *sbp)
{
 char backup[MAXPATHLEN];
 int saved_errno = 0;
 int newfd;

 if (target) {
  if (dobackup) {
   if ((size_t)snprintf(backup, MAXPATHLEN, "%s%s",
       path, suffix) != strlen(path) + strlen(suffix)) {
    saved_errno = errno;




    errno = saved_errno;
    errx(EX_OSERR, "%s: backup filename too long",
        path);
   }
   (void)snprintf(backup, MAXPATHLEN, "%s%s",
       path, suffix);
   if (verbose)
    (void)printf("install: %s -> %s\n",
        path, backup);
   if (rename(path, backup) < 0) {
    saved_errno = errno;




    errno = saved_errno;
    err(EX_OSERR, "rename: %s to %s", path, backup);
   }
  } else
   if (unlink(path) < 0)
    saved_errno = errno;
 }

 newfd = open(path, O_CREAT | O_RDWR | O_TRUNC, S_IRUSR | S_IWUSR);
 if (newfd < 0 && saved_errno != 0)
  errno = saved_errno;
 return newfd;
}
