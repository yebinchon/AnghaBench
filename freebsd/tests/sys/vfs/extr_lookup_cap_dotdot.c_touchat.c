
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE (int) ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 scalar_t__ close (int) ;
 int openat (int,char const*,int,int) ;

__attribute__((used)) static void
touchat(int _dirfd, const char *name)
{
 int fd;

 ATF_REQUIRE((fd = openat(_dirfd, name, O_CREAT | O_TRUNC | O_WRONLY,
     0777)) >= 0);
 ATF_REQUIRE(close(fd) == 0);
}
