
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int ATF_CHECK_MSG (int,char*,...) ;
 int errno ;
 int shm_open (char const*,int,int ) ;

__attribute__((used)) static void
shm_open_should_fail(const char *path, int flags, mode_t mode, int error)
{
 int fd;

 fd = shm_open(path, flags, mode);
 ATF_CHECK_MSG(fd == -1, "shm_open didn't fail");
 ATF_CHECK_MSG(error == errno,
     "shm_open didn't fail with expected errno; errno=%d; expected "
     "errno=%d", errno, error);
}
