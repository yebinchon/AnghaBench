
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int image_copyout (int) ;

__attribute__((used)) static int
raw_write(int fd)
{

 return (image_copyout(fd));
}
