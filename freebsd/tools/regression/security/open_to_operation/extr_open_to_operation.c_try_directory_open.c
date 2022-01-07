
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int errno ;
 int notok_mode (char const*,char*,int) ;
 int ok_mode (char const*,int *,int) ;
 int open (char const*,int) ;

__attribute__((used)) static void
try_directory_open(const char *testname, const char *directory,
    int mode, int expected_errno)
{
 int dfd;

 dfd = open(directory, mode);
 if (dfd >= 0) {
  if (expected_errno)
   notok_mode(testname, "opened", mode);
  else
   ok_mode(testname, ((void*)0), mode);
  close(dfd);
 } else {
  if (expected_errno && expected_errno == errno)
   ok_mode(testname, ((void*)0), mode);
  else if (expected_errno != 0)
   notok_mode(testname, "wrong errno", mode);
  else
   notok_mode(testname, "failed", mode);
 }
}
