
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ off_t ;
typedef int buf ;
typedef int DIGEST_CTX ;


 int EX_OSERR ;
 char* MAP_FAILED ;
 int MAP_SHARED ;
 int MAXBSIZE ;
 int PROT_READ ;
 int SEEK_SET ;
 char* digest_end (int *,int *) ;
 int digest_init (int *) ;
 int digest_update (int *,char*,int) ;
 int err (int ,char*,char const*) ;
 int errno ;
 int errx (int ,char*,char const*,int ,int ) ;
 int fsync (int) ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 char* mmap (int *,size_t,int ,int ,int,scalar_t__) ;
 int munmap (char*,scalar_t__) ;
 int read (int,char*,int) ;
 scalar_t__ safecopy ;
 scalar_t__ trymmap (int) ;
 int unlink (char const*) ;
 int write (int,char*,int) ;

__attribute__((used)) static char *
copy(int from_fd, const char *from_name, int to_fd, const char *to_name,
    off_t size)
{
 int nr, nw;
 int serrno;
 char *p;
 char buf[MAXBSIZE];
 int done_copy;
 DIGEST_CTX ctx;


 if (lseek(from_fd, (off_t)0, SEEK_SET) == (off_t)-1)
  err(EX_OSERR, "lseek: %s", from_name);
 if (lseek(to_fd, (off_t)0, SEEK_SET) == (off_t)-1)
  err(EX_OSERR, "lseek: %s", to_name);

 digest_init(&ctx);






 done_copy = 0;
 if (size <= 8 * 1048576 && trymmap(from_fd) &&
     (p = mmap(((void*)0), (size_t)size, PROT_READ, MAP_SHARED,
      from_fd, (off_t)0)) != MAP_FAILED) {
  nw = write(to_fd, p, size);
  if (nw != size) {
   serrno = errno;
   (void)unlink(to_name);
   if (nw >= 0) {
    errx(EX_OSERR,
     "short write to %s: %jd bytes written, %jd bytes asked to write",
        to_name, (uintmax_t)nw, (uintmax_t)size);
   } else {
    errno = serrno;
    err(EX_OSERR, "%s", to_name);
   }
  }
  digest_update(&ctx, p, size);
  (void)munmap(p, size);
  done_copy = 1;
 }
 if (!done_copy) {
  while ((nr = read(from_fd, buf, sizeof(buf))) > 0) {
   if ((nw = write(to_fd, buf, nr)) != nr) {
    serrno = errno;
    (void)unlink(to_name);
    if (nw >= 0) {
     errx(EX_OSERR,
     "short write to %s: %jd bytes written, %jd bytes asked to write",
         to_name, (uintmax_t)nw,
         (uintmax_t)size);
    } else {
     errno = serrno;
     err(EX_OSERR, "%s", to_name);
    }
   }
   digest_update(&ctx, buf, nr);
  }
  if (nr != 0) {
   serrno = errno;
   (void)unlink(to_name);
   errno = serrno;
   err(EX_OSERR, "%s", from_name);
  }
 }
 if (safecopy && fsync(to_fd) == -1) {
  serrno = errno;
  (void)unlink(to_name);
  errno = serrno;
  err(EX_OSERR, "fsync failed for %s", to_name);
 }
 return (digest_end(&ctx, ((void*)0)));
}
