
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int fail_err (char*) ;
 int fail_errno (char*) ;
 scalar_t__ ksem_unlink (char const*) ;
 int pass () ;

__attribute__((used)) static void
ksem_unlink_should_fail(const char *path, int error)
{

 if (ksem_unlink(path) >= 0) {
  fail_err("ksem_unlink() didn't fail");
  return;
 }
 if (errno != error) {
  fail_errno("ksem_unlink");
  return;
 }
 pass();
}
