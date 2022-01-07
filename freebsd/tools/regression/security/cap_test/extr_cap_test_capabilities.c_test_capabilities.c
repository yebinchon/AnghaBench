
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_REMOVEDIR ;
 int CAP_ACCEPT ;
 int CAP_ACL_CHECK ;
 int CAP_ACL_DELETE ;
 int CAP_ACL_GET ;
 int CAP_ACL_SET ;
 int CAP_BIND ;
 int CAP_CONNECT ;
 int CAP_CREATE ;
 int CAP_EVENT ;
 int CAP_EXTATTR_DELETE ;
 int CAP_EXTATTR_GET ;
 int CAP_EXTATTR_LIST ;
 int CAP_EXTATTR_SET ;
 int CAP_FCHDIR ;
 int CAP_FCHFLAGS ;
 int CAP_FCHMOD ;
 int CAP_FCHOWN ;
 int CAP_FCNTL ;
 int CAP_FEXECVE ;
 int CAP_FLOCK ;
 int CAP_FPATHCONF ;
 int CAP_FSCK ;
 int CAP_FSTAT ;
 int CAP_FSTATFS ;
 int CAP_FSYNC ;
 int CAP_FTRUNCATE ;
 int CAP_FUTIMES ;
 int CAP_GETPEERNAME ;
 int CAP_GETSOCKNAME ;
 int CAP_GETSOCKOPT ;
 int CAP_IOCTL ;
 int CAP_LINKAT ;
 int CAP_LISTEN ;
 int CAP_LOOKUP ;
 int CAP_MAC_GET ;
 int CAP_MAC_SET ;
 int CAP_MKDIRAT ;
 int CAP_MKFIFOAT ;
 int CAP_MKNODAT ;
 int CAP_MMAP ;
 int CAP_MMAP_R ;
 int CAP_MMAP_RW ;
 int CAP_MMAP_RWX ;
 int CAP_MMAP_RX ;
 int CAP_MMAP_W ;
 int CAP_MMAP_WX ;
 int CAP_MMAP_X ;
 int CAP_PDGETPID ;
 int CAP_PDKILL ;
 int CAP_PDWAIT ;
 int CAP_PEELOFF ;
 int CAP_POST_EVENT ;
 int CAP_PREAD ;
 int CAP_PWRITE ;
 int CAP_READ ;
 int CAP_RECV ;
 int CAP_RENAMEAT ;
 int CAP_SEEK ;
 int CAP_SEM_GETVALUE ;
 int CAP_SEM_POST ;
 int CAP_SEM_WAIT ;
 int CAP_SEND ;
 int CAP_SETSOCKOPT ;
 int CAP_SHUTDOWN ;
 int CAP_SYMLINKAT ;
 int CAP_TTYHOOK ;
 int CAP_UNLINKAT ;
 int CAP_WRITE ;
 int KEEP_ERRNO (int ) ;
 int O_DIRECTORY ;
 int O_RDONLY ;
 int PASSED ;
 int TRY (int) ;
 int cap_enter () ;
 int err (int,char*) ;
 int * mkdtemp (char*) ;
 int mkstemp (char*) ;
 int open (char*,int) ;
 int rmdir (char*) ;
 int strlen (char*) ;
 int unlink (char*) ;
 int unlinkat (int,char*,int ) ;

int
test_capabilities(void)
{
 int filefd, dirfd, tmpfd;
 int success = PASSED;
 char file[] = "/tmp/cap_test.XXXXXXXXXX";
 char dir[] = "/tmp/cap_test.XXXXXXXXXX";

 filefd = mkstemp(file);
 if (filefd < 0)
  err(-1, "mkstemp");
 if (mkdtemp(dir) == ((void*)0)) {
  KEEP_ERRNO(unlink(file));
  err(-1, "mkdtemp");
 }
 dirfd = open(dir, O_RDONLY | O_DIRECTORY);
 if (dirfd == -1) {
  KEEP_ERRNO(unlink(file));
  KEEP_ERRNO(rmdir(dir));
  err(-1, "open");
 }
 tmpfd = open("/tmp", O_RDONLY | O_DIRECTORY);
 if (tmpfd == -1) {
  KEEP_ERRNO(unlink(file));
  KEEP_ERRNO(rmdir(dir));
  err(-1, "open");
 }

 if (cap_enter() == -1) {
  KEEP_ERRNO(unlink(file));
  KEEP_ERRNO(rmdir(dir));
  err(-1, "cap_enter");
 }

 TRY(CAP_READ);
 TRY(CAP_WRITE);
 TRY(CAP_SEEK);
 TRY(CAP_PREAD);
 TRY(CAP_PWRITE);
 TRY(CAP_READ | CAP_WRITE);
 TRY(CAP_PREAD | CAP_PWRITE);
 TRY(CAP_MMAP);
 TRY(CAP_MMAP_R);
 TRY(CAP_MMAP_W);
 TRY(CAP_MMAP_X);
 TRY(CAP_MMAP_RW);
 TRY(CAP_MMAP_RX);
 TRY(CAP_MMAP_WX);
 TRY(CAP_MMAP_RWX);
 TRY(CAP_CREATE | CAP_READ | CAP_LOOKUP);
 TRY(CAP_CREATE | CAP_WRITE | CAP_LOOKUP);
 TRY(CAP_CREATE | CAP_READ | CAP_WRITE | CAP_LOOKUP);



 TRY(CAP_FSYNC);
 TRY(CAP_FSYNC | CAP_READ | CAP_LOOKUP);
 TRY(CAP_FSYNC | CAP_WRITE | CAP_LOOKUP);
 TRY(CAP_FSYNC | CAP_READ | CAP_WRITE | CAP_LOOKUP);
 TRY(CAP_FTRUNCATE);
 TRY(CAP_FTRUNCATE | CAP_READ | CAP_LOOKUP);
 TRY(CAP_FTRUNCATE | CAP_WRITE | CAP_LOOKUP);
 TRY(CAP_FTRUNCATE | CAP_READ | CAP_WRITE | CAP_LOOKUP);



 TRY(CAP_FCHFLAGS);
 TRY(CAP_FCHOWN);
 TRY(CAP_FCHOWN | CAP_LOOKUP);
 TRY(CAP_FCHMOD | CAP_LOOKUP);
 TRY(CAP_FCNTL);



 TRY(CAP_FPATHCONF);



 TRY(CAP_FSTAT | CAP_LOOKUP);
 TRY(CAP_FSTATFS);
 TRY(CAP_FUTIMES | CAP_LOOKUP);
 TRY(CAP_LINKAT | CAP_LOOKUP);
 TRY(CAP_MKDIRAT | CAP_LOOKUP);
 TRY(CAP_MKFIFOAT | CAP_LOOKUP);
 TRY(CAP_MKNODAT | CAP_LOOKUP);
 TRY(CAP_SYMLINKAT | CAP_LOOKUP);
 TRY(CAP_UNLINKAT | CAP_LOOKUP);

 TRY(CAP_RENAMEAT | CAP_UNLINKAT | CAP_LOOKUP);
 (void)unlinkat(tmpfd, file + strlen("/tmp/"), 0);
 (void)unlinkat(tmpfd, dir + strlen("/tmp/"), AT_REMOVEDIR);

 return (success);
}
