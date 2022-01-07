
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ EEXIST ;
 int EX_DATAERR ;
 int EX_OSFILE ;
 int EX_UNAVAILABLE ;
 scalar_t__ S_ISDIR (int ) ;
 int _DEF_DIRMODE ;
 int asprintf (char**,char*,char*) ;
 int err (int ,char*,char*) ;
 scalar_t__ errno ;
 int errx (int ,char*,...) ;
 int fchownat (int,char*,int ,int ,int ) ;
 int free (char*) ;
 int fstatat (int,char const*,struct stat*,int ) ;
 int mkdirat (int,char*,int ) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 char* strrchr (char*,char) ;
 int symlinkat (char*,int,char*) ;

__attribute__((used)) static void
mkdir_home_parents(int dfd, const char *dir)
{
 struct stat st;
 char *dirs, *tmp;

 if (*dir != '/')
  errx(EX_DATAERR, "invalid base directory for home '%s'", dir);

 dir++;

 if (fstatat(dfd, dir, &st, 0) != -1) {
  if (S_ISDIR(st.st_mode))
   return;
  errx(EX_OSFILE, "root home `/%s' is not a directory", dir);
 }

 dirs = strdup(dir);
 if (dirs == ((void*)0))
  errx(EX_UNAVAILABLE, "out of memory");

 tmp = strrchr(dirs, '/');
 if (tmp == ((void*)0)) {
  free(dirs);
  return;
 }
 tmp[0] = '\0';







 if (strchr(dirs, '/') == ((void*)0)) {
  asprintf(&tmp, "usr/%s", dirs);
  if (tmp == ((void*)0))
   errx(EX_UNAVAILABLE, "out of memory");
  if (mkdirat(dfd, tmp, _DEF_DIRMODE) != -1 || errno == EEXIST) {
   fchownat(dfd, tmp, 0, 0, 0);
   symlinkat(tmp, dfd, dirs);
  }
  free(tmp);
 }
 tmp = dirs;
 if (fstatat(dfd, dirs, &st, 0) == -1) {
  while ((tmp = strchr(tmp + 1, '/')) != ((void*)0)) {
   *tmp = '\0';
   if (fstatat(dfd, dirs, &st, 0) == -1) {
    if (mkdirat(dfd, dirs, _DEF_DIRMODE) == -1)
     err(EX_OSFILE, "'%s' (root home parent) is not a directory", dirs);
   }
   *tmp = '/';
  }
 }
 if (fstatat(dfd, dirs, &st, 0) == -1) {
  if (mkdirat(dfd, dirs, _DEF_DIRMODE) == -1)
   err(EX_OSFILE, "'%s' (root home parent) is not a directory", dirs);
  fchownat(dfd, dirs, 0, 0, 0);
 }

 free(dirs);
}
