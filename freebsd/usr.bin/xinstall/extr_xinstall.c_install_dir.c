
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct stat {int st_mode; } ;
typedef scalar_t__ gid_t ;


 scalar_t__ EEXIST ;
 scalar_t__ ENOENT ;
 int EX_OSERR ;
 int S_ISDIR (int ) ;
 scalar_t__ chmod (char*,int ) ;
 scalar_t__ chown (char*,scalar_t__,scalar_t__) ;
 int dounpriv ;
 int err (int ,char*,char*) ;
 scalar_t__ errno ;
 int errx (int ,char*,char*) ;
 scalar_t__ gid ;
 int metadata_log (char*,char*,int *,int *,int *,int ) ;
 scalar_t__ mkdir (char*,int) ;
 int mode ;
 int printf (char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ uid ;
 scalar_t__ verbose ;
 int warn (char*,scalar_t__,char*,...) ;

__attribute__((used)) static void
install_dir(char *path)
{
 char *p;
 struct stat sb;
 int ch, tried_mkdir;

 for (p = path;; ++p)
  if (!*p || (p != path && *p == '/')) {
   tried_mkdir = 0;
   ch = *p;
   *p = '\0';
again:
   if (stat(path, &sb) < 0) {
    if (errno != ENOENT || tried_mkdir)
     err(EX_OSERR, "stat %s", path);
    if (mkdir(path, 0755) < 0) {
     tried_mkdir = 1;
     if (errno == EEXIST)
      goto again;
     err(EX_OSERR, "mkdir %s", path);
    }
    if (verbose)
     (void)printf("install: mkdir %s\n",
         path);
   } else if (!S_ISDIR(sb.st_mode))
    errx(EX_OSERR, "%s exists but is not a directory", path);
   if (!(*p = ch))
    break;
   }

 if (!dounpriv) {
  if ((gid != (gid_t)-1 || uid != (uid_t)-1) &&
      chown(path, uid, gid))
   warn("chown %u:%u %s", uid, gid, path);

  if (chmod(path, mode))
   warn("chmod %o %s", mode, path);
 }
 metadata_log(path, "dir", ((void*)0), ((void*)0), ((void*)0), 0);
}
