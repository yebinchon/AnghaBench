
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 scalar_t__ fchmod (int,int) ;
 int notok_mode (char const*,char*,int) ;
 int ok_mode (char const*,int *,int) ;
 int open (char const*,int) ;

__attribute__((used)) static void
check_fchmod(const char *testname, const char *path, int setmode,
    const int *modes, int modes_count)
{
 int fd, i, mode;




 for (i = 0; i < modes_count; i++) {
  mode = modes[i];
  fd = open(path, mode);
  if (fd < 0) {
   notok_mode(testname, "open", mode);
   continue;
  }
  if (fchmod(fd, setmode) == 0)
   ok_mode(testname, ((void*)0), mode);
  else
   notok_mode(testname, "failed", mode);
  close(fd);
 }
}
