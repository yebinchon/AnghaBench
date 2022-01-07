
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int O_ACCMODE ;
 int O_RDONLY ;
 int O_RDWR ;
 int PF_LOCAL ;
 int SOCK_STREAM ;
 int close (int) ;
 int notok_mode (char const*,char*,int) ;
 int ok_mode (char const*,char*,int) ;
 int open (char const*,int) ;
 scalar_t__ sendfile (int,int,int ,int,int *,int *,int ) ;
 scalar_t__ socketpair (int ,int ,int ,int*) ;

__attribute__((used)) static void
check_sendfile(const char *testname, const char *path, int isdir,
    const int *modes, int modes_count)
{
 int fd, i, mode, sv[2];
 off_t sent;





 for (i = 0; i < modes_count; i++) {
  mode = modes[i];
  fd = open(path, mode);
  if (fd < 0) {
   notok_mode(testname, "open", mode);
   continue;
  }
  if (socketpair(PF_LOCAL, SOCK_STREAM, 0, sv) < 0) {
   notok_mode(testname, "socketpair", mode);
   continue;
  }
  if (sendfile(fd, sv[0], 0, 1, ((void*)0), &sent, 0) == 0) {
   if (isdir)
    notok_mode(testname, "directory succeeded",
        mode);
   else if (((mode & O_ACCMODE) == O_RDONLY) ||
       ((mode & O_ACCMODE) == O_RDWR))
    ok_mode(testname, "succeeded", mode);
   else
    notok_mode(testname, "succeeded", mode);
  } else {
   if (isdir)
    ok_mode(testname, "directory failed", mode);
   else if (((mode & O_ACCMODE) == O_RDONLY) ||
       ((mode & O_ACCMODE) == O_RDWR))
    notok_mode(testname, "failed", mode);
   else
    ok_mode(testname, "failed", mode);
  }
  close(sv[0]);
  close(sv[1]);
  close(fd);
 }
}
