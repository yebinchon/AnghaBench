
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_MSG (int,char*,int ) ;
 int O_RDONLY ;
 int errno ;
 int open (char*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static void
devnull(int *fdp)
{
 int fd;

 fd = open("/dev/null", O_RDONLY);
 ATF_REQUIRE_MSG(fd != -1, "open failed: %s", strerror(errno));
 *fdp = fd;
}
