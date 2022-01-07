
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int write (int,void*,size_t) ;

__attribute__((used)) static int
image_copyout_memory(int fd, size_t size, void *ptr)
{

 if (write(fd, ptr, size) == -1)
  return (errno);
 return (0);
}
