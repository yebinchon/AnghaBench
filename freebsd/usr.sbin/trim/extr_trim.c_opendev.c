
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 int EX_NOINPUT ;
 int EX_OSERR ;
 int _PATH_DEV ;
 scalar_t__ asprintf (char**,char*,int ,char const*) ;
 int err (int ,char*,char const*) ;
 scalar_t__ errno ;
 int errx (int ,char*) ;
 int free (char*) ;
 int open (char const*,int) ;

__attribute__((used)) static int
opendev(const char *path, int flags)
{
 int fd;
 char *tstr;

 if ((fd = open(path, flags)) < 0) {
  if (errno == ENOENT && path[0] != '/') {
   if (asprintf(&tstr, "%s%s", _PATH_DEV, path) < 0)
    errx(EX_OSERR, "no memory");
   fd = open(tstr, flags);
   free(tstr);
  }
 }

 if (fd < 0)
  err(EX_NOINPUT, "open failed: %s", path);

 return (fd);
}
