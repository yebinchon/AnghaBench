
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int O_ACCMODE ;
 int O_RDONLY ;
 int close (int) ;
 scalar_t__ getdents (int,char*,int) ;
 int notok_mode (char const*,char*,int) ;
 int ok_mode (char const*,char*,int) ;
 int open (char const*,int) ;

__attribute__((used)) static void
check_getdents(const char *testname, const char *path, int isdir,
    const int *modes, int modes_count)
{
 int fd, i, mode;
 char buf[8192];





 for (i = 0; i < modes_count; i++) {
  mode = modes[i];
  fd = open(path, mode);
  if (fd < 0) {
   notok_mode(testname, "open", mode);
   continue;
  }
  if (getdents(fd, buf, sizeof(buf)) >= 0) {
   if (isdir && ((mode & O_ACCMODE) == O_RDONLY))
    ok_mode(testname, "directory succeeded",
        mode);
   else if (isdir)
    notok_mode(testname, "directory succeeded",
        mode);
   else
    notok_mode(testname, "file succeeded", mode);
  } else {
   if (isdir && ((mode & O_ACCMODE) == O_RDONLY))
    notok_mode(testname, "directory failed",
        mode);
   else if (isdir)
    ok_mode(testname, "directory failed", mode);
   else
    ok_mode(testname, "file failed", mode);
  }
  close(fd);
 }
}
