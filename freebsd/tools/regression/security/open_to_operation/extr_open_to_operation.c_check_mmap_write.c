
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* MAP_FAILED ;
 int MAP_SHARED ;
 int O_ACCMODE ;
 int O_RDWR ;
 int O_WRONLY ;
 int PROT_WRITE ;
 int close (int) ;
 int getpagesize () ;
 char* mmap (int *,int ,int ,int ,int,int ) ;
 int munmap (char*,int ) ;
 int notok_mode (char const*,char*,int) ;
 int ok_mode (char const*,char*,int) ;
 int open (char const*,int) ;

__attribute__((used)) static void
check_mmap_write(const char *testname, const char *path, const int *modes,
    int modes_count)
{
 int fd, i, mode;
 char *addr;







 for (i = 0; i < modes_count; i++) {
  mode = modes[i];
  fd = open(path, mode);
  if (fd < 0) {
   notok_mode(testname, "open", mode);
   continue;
  }
  addr = mmap(((void*)0), getpagesize(), PROT_WRITE, MAP_SHARED, fd,
      0);
  if (addr == MAP_FAILED) {
   if ((mode & O_ACCMODE) == O_WRONLY ||
       (mode & O_ACCMODE) == O_RDWR)
    notok_mode(testname, "mmap failed",
        mode);
   else
    ok_mode(testname, "mmap failed", mode);
  } else {
   if ((mode & O_ACCMODE) == O_WRONLY ||
       (mode & O_ACCMODE) == O_RDWR)
    ok_mode(testname, "mmap succeeded",
        mode);
   else
    notok_mode(testname, "mmap succeeded", mode);
   (void)munmap(addr, getpagesize());
  }
  close(fd);
 }
}
