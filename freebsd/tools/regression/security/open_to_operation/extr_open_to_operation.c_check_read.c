
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ (* read_fn ) (int,char*,int) ;
typedef int ch ;


 int O_ACCMODE ;
 int O_RDONLY ;
 int O_RDWR ;
 int close (int) ;
 int notok_mode (char const*,char*,int) ;
 int ok_mode (char const*,char*,int) ;
 int open (char const*,int) ;

__attribute__((used)) static void
check_read(const char *testname, read_fn fn, const char *path,
    const int *modes, int modes_count)
{
 int fd, i, mode;
 char ch;





 for (i = 0; i < modes_count; i++) {
  mode = modes[i];
  fd = open(path, mode);
  if (fd < 0) {
   notok_mode(testname, "open", mode);
   continue;
  }
  if (fn(fd, &ch, sizeof(ch)) < 0) {
   if ((mode & O_ACCMODE) == O_RDONLY ||
       (mode & O_ACCMODE) == O_RDWR)
    notok_mode(testname, "read failed", mode);
   else
    ok_mode(testname, "read failed", mode);
  } else {
   if (!((mode & O_ACCMODE) == O_RDONLY ||
       (mode & O_ACCMODE) == O_RDWR))
    notok_mode(testname, "read succeeded", mode);
   else
    ok_mode(testname, "read succeeded", mode);
  }
  close(fd);
 }
}
