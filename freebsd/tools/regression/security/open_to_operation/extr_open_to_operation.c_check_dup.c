
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int dup (int) ;
 int notok_mode (char const*,char*,int) ;
 int ok_mode (char const*,int *,int) ;
 int open (char const*,int) ;

__attribute__((used)) static void
check_dup(const char *testname, const char *path, const int *modes,
    int modes_count)
{
 int dfd, fd, i, mode;




 for (i = 0; i < modes_count; i++) {
  mode = modes[i];
  fd = open(path, mode);
  if (fd < 0) {
   notok_mode(testname, "open", mode);
   continue;
  }
  dfd = dup(fd);
  if (dfd >= 0) {
   ok_mode(testname, ((void*)0), mode);
   close(dfd);
  } else
   notok_mode(testname, ((void*)0), mode);
  close(fd);
 }
}
