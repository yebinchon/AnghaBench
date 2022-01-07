
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int atf_tc_skip (char*) ;
 int open (char*,int ) ;

__attribute__((used)) static int
open_kcov(void)
{
 int fd;

 fd = open("/dev/kcov", O_RDWR);
 if (fd == -1)
  atf_tc_skip("Failed to open /dev/kcov");

 return (fd);
}
