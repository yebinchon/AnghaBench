
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; scalar_t__ st_dev; scalar_t__ st_ino; int st_mode; } ;
typedef int ssize_t ;
typedef int randseed ;
typedef int off_t ;
typedef int intmax_t ;


 int EX_NOINPUT ;
 int EX_SOFTWARE ;
 int EX_USAGE ;
 int MD5Init (int *) ;
 int MD5Update (int *,char*,int) ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int close (int) ;
 int err (int ,char*,...) ;
 int errx (int ,char*,...) ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ getentropy (char*,int) ;
 int md5_ctx ;
 int memset (char*,int ,int) ;
 int open (char const*,int) ;
 int read (int,char*,int) ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static void
get_random_seed(const char *random_source)
{
 char randseed[32];
 struct stat fsb, rsb;
 ssize_t rd;
 int rsfd;

 rsfd = -1;
 rd = sizeof(randseed);

 if (random_source == ((void*)0)) {
  if (getentropy(randseed, sizeof(randseed)) < 0)
   err(EX_SOFTWARE, "getentropy");
  goto out;
 }

 rsfd = open(random_source, O_RDONLY | O_CLOEXEC);
 if (rsfd < 0)
  err(EX_NOINPUT, "open: %s", random_source);

 if (fstat(rsfd, &fsb) != 0)
  err(EX_SOFTWARE, "fstat");

 if (!S_ISREG(fsb.st_mode) && !S_ISCHR(fsb.st_mode))
  err(EX_USAGE,
      "random seed isn't a regular file or /dev/random");





 if (S_ISREG(fsb.st_mode)) {
  if (fsb.st_size > (off_t)sizeof(randseed))
   errx(EX_USAGE, "random seed is too large (%jd >"
       " %zu)!", (intmax_t)fsb.st_size,
       sizeof(randseed));
  else if (fsb.st_size < 1)
   errx(EX_USAGE, "random seed is too small ("
       "0 bytes)");

  memset(randseed, 0, sizeof(randseed));

  rd = read(rsfd, randseed, fsb.st_size);
  if (rd < 0)
   err(EX_SOFTWARE, "reading random seed file %s",
       random_source);
  if (rd < (ssize_t)fsb.st_size)
   errx(EX_SOFTWARE, "short read from %s", random_source);
 } else if (S_ISCHR(fsb.st_mode)) {
  if (stat("/dev/random", &rsb) < 0)
   err(EX_SOFTWARE, "stat");

  if (fsb.st_dev != rsb.st_dev ||
      fsb.st_ino != rsb.st_ino)
   errx(EX_USAGE, "random seed is a character "
       "device other than /dev/random");

  if (getentropy(randseed, sizeof(randseed)) < 0)
   err(EX_SOFTWARE, "getentropy");
 }

out:
 if (rsfd >= 0)
  close(rsfd);

 MD5Init(&md5_ctx);
 MD5Update(&md5_ctx, randseed, rd);
}
