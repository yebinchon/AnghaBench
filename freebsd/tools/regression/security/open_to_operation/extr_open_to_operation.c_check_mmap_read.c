
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* MAP_FAILED ;
 int MAP_SHARED ;
 int O_ACCMODE ;
 int O_RDONLY ;
 int O_RDWR ;
 int PROT_READ ;
 int close (int) ;
 int getpagesize () ;
 char* mmap (int *,int ,int ,int ,int,int ) ;
 int munmap (char*,int ) ;
 int notok_mode (char const*,char*,int) ;
 int ok_mode (char const*,char*,int) ;
 int open (char const*,int) ;

__attribute__((used)) static void
check_mmap_read(const char *testname, const char *path, int isdir,
    const int *modes, int modes_count)
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
  addr = mmap(((void*)0), getpagesize(), PROT_READ, MAP_SHARED, fd,
      0);
  if (addr == MAP_FAILED) {
   if (isdir)
    ok_mode(testname, "mmap dir failed", mode);
   else if ((mode & O_ACCMODE) == O_RDONLY ||
       (mode & O_ACCMODE) == O_RDWR)
    notok_mode(testname, "mmap file failed",
        mode);
   else
    ok_mode(testname, "mmap file failed", mode);
  } else {
   if (isdir)
    notok_mode(testname, "mmap dir succeeded",
        mode);
   else if ((mode & O_ACCMODE) == O_RDONLY ||
       (mode & O_ACCMODE) == O_RDWR)
    ok_mode(testname, "mmap file succeeded",
        mode);
   else
    notok_mode(testname, "mmap file succeeded",
        mode);
   (void)munmap(addr, getpagesize());
  }
  close(fd);
 }
}
