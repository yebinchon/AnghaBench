
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_CHECK_EQ_MSG (int,int ,char*,char const*,int ,int) ;
 int ATF_CHECK_MSG (int,char*,char const*,...) ;
 int ATF_REQUIRE (int) ;
 void* MAP_FAILED ;
 int errno ;
 int getpagesize () ;
 void* mmap (int *,int,int,int,int,int ) ;
 int munmap (void*,int) ;

__attribute__((used)) static void
checked_mmap(int prot, int flags, int fd, int error, const char *msg)
{
 void *p;
 int pagesize;

 ATF_REQUIRE((pagesize = getpagesize()) > 0);
 p = mmap(((void*)0), pagesize, prot, flags, fd, 0);
 if (p == MAP_FAILED) {
  if (error == 0)
   ATF_CHECK_MSG(0, "%s failed with errno %d", msg,
       errno);
  else
   ATF_CHECK_EQ_MSG(error, errno,
       "%s failed with wrong errno %d (expected %d)", msg,
       errno, error);
 } else {
  ATF_CHECK_MSG(error == 0, "%s succeeded", msg);
  munmap(p, pagesize);
 }
}
