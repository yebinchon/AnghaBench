
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct stat {int st_mode; } ;
typedef int ssize_t ;
typedef int buf ;


 int BUFSIZ ;
 scalar_t__ ENOENT ;
 int O_RDONLY ;
 int STDIN_FILENO ;
 scalar_t__ S_ISREG (int ) ;
 int asprintf (char**,char*,int ) ;
 int close (int) ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fstat (int,struct stat*) ;
 int mkstemp (char*) ;
 int open (char const*,int ,int ) ;
 int read (int,int *,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int tmpdir ;
 int unlink (char*) ;
 int warn (char*,char const*) ;
 int write (int,int *,size_t) ;

__attribute__((used)) static char *
mktmpcpy(const char *source_file)
{
 struct stat sb;
 ssize_t rcount;
 int ifd, ofd;
 u_char buf[BUFSIZ];
 char *target_file;


 ifd = open(source_file, O_RDONLY, 0);

 if (ifd != -1) {
  if (fstat(ifd, &sb) == -1)
   err(2, "error getting file status from %s", source_file);


  if (S_ISREG(sb.st_mode)) {
   close(ifd);
   return (((void*)0));
  }
 } else {

  if (errno == ENOENT && strcmp(source_file, "-") == 0)
   ifd = STDIN_FILENO;
  else
   err(2, "error opening %s", source_file);
 }


 if (asprintf(&target_file, "%s/sdiff.XXXXXXXXXX", tmpdir) == -1)
  err(2, "asprintf");
 if ((ofd = mkstemp(target_file)) == -1) {
  warn("error opening %s", target_file);
  goto FAIL;
 }
 while ((rcount = read(ifd, buf, sizeof(buf))) != -1 &&
     rcount != 0) {
  ssize_t wcount;

  wcount = write(ofd, buf, (size_t)rcount);
  if (-1 == wcount || rcount != wcount) {
   warn("error writing to %s", target_file);
   goto FAIL;
  }
 }
 if (rcount == -1) {
  warn("error reading from %s", source_file);
  goto FAIL;
 }

 close(ifd);
 close(ofd);

 return (target_file);

FAIL:
 unlink(target_file);
 exit(2);
}
