
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE (int) ;
 int F_ADD_SEALS ;
 int MFD_ALLOW_SEALING ;
 int close (int) ;
 int errno ;
 scalar_t__ fcntl (int,int ,int) ;
 int ftruncate (int,int) ;
 int memfd_create (char*,int ) ;

__attribute__((used)) static int
memfd_truncate_test(int initial_size, int dest_size, int seals)
{
 int err, fd;

 ATF_REQUIRE((fd = memfd_create("...", MFD_ALLOW_SEALING)) != -1);
 ATF_REQUIRE(ftruncate(fd, initial_size) == 0);

 ATF_REQUIRE(fcntl(fd, F_ADD_SEALS, seals) == 0);

 err = ftruncate(fd, dest_size);
 if (err != 0)
  err = errno;
 close(fd);
 return (err);
}
