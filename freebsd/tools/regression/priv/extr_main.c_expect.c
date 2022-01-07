
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int something_failed ;
 int warn (char*,char const*,int,int) ;
 int warnx (char*,char const*) ;

void
expect(const char *test, int error, int expected_error, int expected_errno)
{

 if (error == 0) {
  if (expected_error != 0) {
   something_failed = 1;
   warnx("%s: returned 0", test);
  }
 } else {
  if (expected_error == 0) {
   something_failed = 1;
   warn("%s: returned (%d, %d)", test, error, errno);
  } else if (expected_errno != errno) {
   something_failed = 1;
   warn("%s: returned (%d, %d)", test, error, errno);
  }
 }
}
