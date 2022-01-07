
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE (int) ;
 int CRIOGET ;
 int O_RDWR ;
 int close (int) ;
 int ioctl (int,int ,int*) ;
 int open (char*,int ) ;

__attribute__((used)) static int
get_handle_fd(void)
{
 int dc_fd, fd;

 dc_fd = open("/dev/crypto", O_RDWR);





 ATF_REQUIRE(dc_fd >= 0);
 ATF_REQUIRE(ioctl(dc_fd, CRIOGET, &fd) != -1);
 close(dc_fd);
 return (fd);
}
