
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef int u_long ;
typedef int u_int ;
typedef int tempfile ;
struct timespec {int dummy; } ;
struct stat {int st_mode; int st_flags; scalar_t__ st_size; int st_nlink; scalar_t__ st_gid; scalar_t__ st_uid; struct timespec st_mtim; struct timespec st_atim; } ;
typedef int pathbuf ;
typedef scalar_t__ gid_t ;


 int ALLPERMS ;
 int AT_FDCWD ;
 int DIRECTORY ;
 int EFTYPE ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int EX_OSERR ;
 int MAXPATHLEN ;
 int NOCHANGEBITS ;
 int O_RDONLY ;
 int SETFLAGS ;
 int S_IFDIR ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int S_ISLNK (int) ;
 scalar_t__ S_ISREG (int) ;
 int UF_NODUMP ;
 int _PATH_DEVNULL ;
 int chflags (char const*,int) ;
 int close (int) ;
 scalar_t__ compare (int,char const*,size_t,int,char const*,size_t,char**) ;
 char* copy (int,char const*,int,char*,scalar_t__) ;
 int create_newfile (char const*,int,struct stat*) ;
 int create_tempfile (char const*,char*,int) ;
 char* digest_file (char*) ;
 scalar_t__ dobackup ;
 scalar_t__ docompare ;
 scalar_t__ dolink ;
 scalar_t__ dopreserve ;
 scalar_t__ dostrip ;
 scalar_t__ dounpriv ;
 int err (int ,char*,char const*,...) ;
 int errno ;
 int errx (int ,char*,char const*) ;
 scalar_t__ fchflags (int,int) ;
 scalar_t__ fchmod (int,int) ;
 int fchown (int,scalar_t__,scalar_t__) ;
 int free (char*) ;
 int fstat (int,struct stat*) ;
 scalar_t__ gid ;
 scalar_t__ link (char const*,char*) ;
 scalar_t__ lstat (char const*,struct stat*) ;
 int makelink (char const*,char const*,struct stat*) ;
 int metadata_log (char const*,char*,struct timespec*,int *,char*,scalar_t__) ;
 int mode ;
 int open (char const*,int ,int ) ;
 int printf (char*,char const*,char const*) ;
 scalar_t__ rename (char*,char const*) ;
 int rmdir (char const*) ;
 scalar_t__ safecopy ;
 scalar_t__ snprintf (char*,int,char*,char const*,char const*,...) ;
 scalar_t__ stat (char const*,struct stat*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strip (char*) ;
 size_t strlen (char const*) ;
 char* strrchr (char const*,char) ;
 char const* suffix ;
 scalar_t__ uid ;
 scalar_t__ unlink (char const*) ;
 int utimensat (int ,char const*,struct timespec*,int ) ;
 scalar_t__ verbose ;
 int warn (char*,char const*) ;

__attribute__((used)) static void
install(const char *from_name, const char *to_name, u_long fset, u_int flags)
{
 struct stat from_sb, temp_sb, to_sb;
 struct timespec tsb[2];
 int devnull, files_match, from_fd, serrno, target;
 int tempcopy, temp_fd, to_fd;
 char backup[MAXPATHLEN], *p, pathbuf[MAXPATHLEN], tempfile[MAXPATHLEN];
 char *digestresult;

 files_match = 0;
 from_fd = -1;
 to_fd = -1;


 if (flags & DIRECTORY || strcmp(from_name, _PATH_DEVNULL)) {
  if (!dolink) {
   if (stat(from_name, &from_sb))
    err(EX_OSERR, "%s", from_name);
   if (!S_ISREG(from_sb.st_mode)) {
    errno = EFTYPE;
    err(EX_OSERR, "%s", from_name);
   }
  }

  if (flags & DIRECTORY) {
   (void)snprintf(pathbuf, sizeof(pathbuf), "%s%s%s",
       to_name,
       to_name[strlen(to_name) - 1] == '/' ? "" : "/",
       (p = strrchr(from_name, '/')) ? ++p : from_name);
   to_name = pathbuf;
  }
  devnull = 0;
 } else {
  devnull = 1;
 }

 target = (lstat(to_name, &to_sb) == 0);

 if (dolink) {
  if (target && !safecopy) {
   if (to_sb.st_mode & S_IFDIR && rmdir(to_name) == -1)
    err(EX_OSERR, "%s", to_name);





   unlink(to_name);
  }
  makelink(from_name, to_name, target ? &to_sb : ((void*)0));
  return;
 }

 if (target && !S_ISREG(to_sb.st_mode) && !S_ISLNK(to_sb.st_mode)) {
  errno = EFTYPE;
  warn("%s", to_name);
  return;
 }


 tempcopy = safecopy && target;

 if (!devnull && (from_fd = open(from_name, O_RDONLY, 0)) < 0)
  err(EX_OSERR, "%s", from_name);


 if (docompare && !dostrip && target && S_ISREG(to_sb.st_mode)) {
  if ((to_fd = open(to_name, O_RDONLY, 0)) < 0)
   err(EX_OSERR, "%s", to_name);
  if (devnull)
   files_match = to_sb.st_size == 0;
  else
   files_match = !(compare(from_fd, from_name,
       (size_t)from_sb.st_size, to_fd,
       to_name, (size_t)to_sb.st_size, &digestresult));


  if (!files_match)
   (void)close(to_fd);
 }

 if (!files_match) {
  if (tempcopy) {
   to_fd = create_tempfile(to_name, tempfile,
       sizeof(tempfile));
   if (to_fd < 0)
    err(EX_OSERR, "%s", tempfile);
  } else {
   if ((to_fd = create_newfile(to_name, target,
       &to_sb)) < 0)
    err(EX_OSERR, "%s", to_name);
   if (verbose)
    (void)printf("install: %s -> %s\n",
        from_name, to_name);
  }
  if (!devnull)
   digestresult = copy(from_fd, from_name, to_fd,
        tempcopy ? tempfile : to_name, from_sb.st_size);
  else
   digestresult = ((void*)0);
 }

 if (dostrip) {
  strip(tempcopy ? tempfile : to_name);





  close(to_fd);
  to_fd = open(tempcopy ? tempfile : to_name, O_RDONLY, 0);
  if (to_fd < 0)
   err(EX_OSERR, "stripping %s", to_name);
 }




 if (docompare && dostrip && target && S_ISREG(to_sb.st_mode)) {
  temp_fd = to_fd;


  if ((to_fd = open(to_name, O_RDONLY, 0)) < 0)
   err(EX_OSERR, "%s", to_name);

  if (fstat(temp_fd, &temp_sb)) {
   serrno = errno;
   (void)unlink(tempfile);
   errno = serrno;
   err(EX_OSERR, "%s", tempfile);
  }

  if (compare(temp_fd, tempfile, (size_t)temp_sb.st_size, to_fd,
       to_name, (size_t)to_sb.st_size, &digestresult)
       == 0) {





   if (to_sb.st_nlink != 1) {
    tsb[0] = to_sb.st_atim;
    tsb[1] = to_sb.st_mtim;
    (void)utimensat(AT_FDCWD, tempfile, tsb, 0);
   } else {
    files_match = 1;
    (void)unlink(tempfile);
   }
   (void) close(temp_fd);
  }
 } else if (dostrip)
  digestresult = digest_file(tempfile);





 if (tempcopy && !files_match) {





  if (dobackup) {
   if ((size_t)snprintf(backup, MAXPATHLEN, "%s%s", to_name,
       suffix) != strlen(to_name) + strlen(suffix)) {
    unlink(tempfile);
    errx(EX_OSERR, "%s: backup filename too long",
        to_name);
   }
   if (verbose)
    (void)printf("install: %s -> %s\n", to_name, backup);
   if (unlink(backup) < 0 && errno != ENOENT) {
    serrno = errno;




    unlink(tempfile);
    errno = serrno;
    err(EX_OSERR, "unlink: %s", backup);
   }
   if (link(to_name, backup) < 0) {
    serrno = errno;
    unlink(tempfile);




    errno = serrno;
    err(EX_OSERR, "link: %s to %s", to_name,
         backup);
   }
  }
  if (verbose)
   (void)printf("install: %s -> %s\n", from_name, to_name);
  if (rename(tempfile, to_name) < 0) {
   serrno = errno;
   unlink(tempfile);
   errno = serrno;
   err(EX_OSERR, "rename: %s to %s",
       tempfile, to_name);
  }


  (void) close(to_fd);
  if ((to_fd = open(to_name, O_RDONLY, 0)) < 0)
   err(EX_OSERR, "%s", to_name);
 }




 if (dopreserve && !files_match && !devnull) {
  tsb[0] = from_sb.st_atim;
  tsb[1] = from_sb.st_mtim;
  (void)utimensat(AT_FDCWD, to_name, tsb, 0);
 }

 if (fstat(to_fd, &to_sb) == -1) {
  serrno = errno;
  (void)unlink(to_name);
  errno = serrno;
  err(EX_OSERR, "%s", to_name);
 }





 if (!dounpriv && ((gid != (gid_t)-1 && gid != to_sb.st_gid) ||
     (uid != (uid_t)-1 && uid != to_sb.st_uid) ||
     (mode != (to_sb.st_mode & ALLPERMS)))) {





 }

 if (!dounpriv &
     (gid != (gid_t)-1 && gid != to_sb.st_gid) ||
     (uid != (uid_t)-1 && uid != to_sb.st_uid))
  if (fchown(to_fd, uid, gid) == -1) {
   serrno = errno;
   (void)unlink(to_name);
   errno = serrno;
   err(EX_OSERR,"%s: chown/chgrp", to_name);
  }

 if (mode != (to_sb.st_mode & ALLPERMS)) {
  if (fchmod(to_fd,
       dounpriv ? mode & (S_IRWXU|S_IRWXG|S_IRWXO) : mode)) {
   serrno = errno;
   (void)unlink(to_name);
   errno = serrno;
   err(EX_OSERR, "%s: chmod", to_name);
  }
 }
 (void)close(to_fd);
 if (!devnull)
  (void)close(from_fd);

 metadata_log(to_name, "file", tsb, ((void*)0), digestresult, to_sb.st_size);
 free(digestresult);
}
