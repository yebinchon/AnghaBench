
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ATF_REQUIRE_MSG (int,char*,int ,int ) ;
 int CIOCFSESSION ;
 int errno ;
 scalar_t__ ioctl (int,int ,int*) ;
 int strerror (int ) ;

__attribute__((used)) static void
destroy_session(int fd, int _ses)
{
 uint32_t ses;

 ses = _ses;
 ATF_REQUIRE_MSG(ioctl(fd, CIOCFSESSION, &ses) >= 0,
     "destroy session failed, errno=%d (%s)", errno, strerror(errno));
}
