
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 scalar_t__ ENOENT ;
 long NAME_MAX ;
 long PATH_MAX ;
 scalar_t__ Pflag ;
 int _PC_NAME_MAX ;
 int _PC_PATH_MAX ;
 long _POSIX_NAME_MAX ;
 long _POSIX_PATH_MAX ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int free (char*) ;
 long pathconf (char const*,int ) ;
 scalar_t__ pflag ;
 int portable (char*) ;
 int stat (char*,struct stat*) ;
 scalar_t__ strcspn (char*,char*) ;
 char* strdup (char const*) ;
 size_t strlen (char const*) ;
 int strspn (char*,char*) ;
 int * strstr (char*,char*) ;
 int warn (char*,char const*,int,char*) ;
 int warnx (char*,char const*,...) ;

__attribute__((used)) static int
check(const char *path)
{
 struct stat sb;
 long complen, namemax, pathmax, svnamemax;
 int last;
 char *end, *p, *pathd;

 if ((pathd = strdup(path)) == ((void*)0))
  err(1, "strdup");

 p = pathd;

 if (Pflag && *p == '\0') {
  warnx("%s: empty pathname", path);
  goto bad;
 }
 if ((Pflag || pflag) && (*p == '-' || strstr(p, "/-") != ((void*)0))) {
  warnx("%s: contains a component starting with '-'", path);
  goto bad;
 }

 if (!pflag) {
  errno = 0;
  namemax = pathconf(*p == '/' ? "/" : ".", _PC_NAME_MAX);
  if (namemax == -1 && errno != 0)
   namemax = NAME_MAX;
 } else
  namemax = _POSIX_NAME_MAX;

 for (;;) {
  p += strspn(p, "/");
  complen = (long)strcspn(p, "/");
  end = p + complen;
  last = *end == '\0';
  *end = '\0';

  if (namemax != -1 && complen > namemax) {
   warnx("%s: %s: component too long (limit %ld)", path,
       p, namemax);
   goto bad;
  }

  if (!pflag && stat(pathd, &sb) == -1 && errno != ENOENT) {
   warn("%s: %.*s", path, (int)(strlen(pathd) -
       complen - 1), pathd);
   goto bad;
  }

  if (pflag && !portable(p)) {
   warnx("%s: %s: component contains non-portable "
       "character", path, p);
   goto bad;
  }

  if (last)
   break;

  if (!pflag) {
   errno = 0;
   svnamemax = namemax;
   namemax = pathconf(pathd, _PC_NAME_MAX);
   if (namemax == -1 && errno != 0)
    namemax = svnamemax;
  }

  *end = '/';
  p = end + 1;
 }

 if (!pflag) {
  errno = 0;
  pathmax = pathconf(path, _PC_PATH_MAX);
  if (pathmax == -1 && errno != 0)
   pathmax = PATH_MAX;
 } else
  pathmax = _POSIX_PATH_MAX;
 if (pathmax != -1 && strlen(path) >= (size_t)pathmax) {
  warnx("%s: path too long (limit %ld)", path, pathmax - 1);
  goto bad;
 }

 free(pathd);
 return (0);

bad: free(pathd);
 return (1);
}
