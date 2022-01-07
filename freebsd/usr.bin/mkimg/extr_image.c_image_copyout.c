
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int image_copyout_done (int) ;
 int image_copyout_region (int,int ,int ) ;
 int image_size ;

int
image_copyout(int fd)
{
 int error;

 error = image_copyout_region(fd, 0, image_size);
 if (!error)
  error = image_copyout_done(fd);
 return (error);
}
