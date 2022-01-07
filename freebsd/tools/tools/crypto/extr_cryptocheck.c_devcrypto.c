
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CLOEXEC ;
 int O_RDWR ;
 int err (int,char*) ;
 int open (char*,int,int ) ;

__attribute__((used)) static int
devcrypto(void)
{
 static int fd = -1;

 if (fd < 0) {
  fd = open("/dev/crypto", O_RDWR | O_CLOEXEC, 0);
  if (fd < 0)
   err(1, "/dev/crypto");
 }
 return (fd);
}
