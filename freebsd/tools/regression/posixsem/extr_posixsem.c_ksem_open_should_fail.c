
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semid_t ;
typedef int mode_t ;


 int errno ;
 int fail_err (char*) ;
 int fail_errno (char*) ;
 int ksem_close (int ) ;
 scalar_t__ ksem_open (int *,char const*,int,int ,unsigned int) ;
 int pass () ;

__attribute__((used)) static void
ksem_open_should_fail(const char *path, int flags, mode_t mode, unsigned int
    value, int error)
{
 semid_t id;

 if (ksem_open(&id, path, flags, mode, value) >= 0) {
  fail_err("ksem_open() didn't fail");
  ksem_close(id);
  return;
 }
 if (errno != error) {
  fail_errno("ksem_open");
  return;
 }
 pass();
}
