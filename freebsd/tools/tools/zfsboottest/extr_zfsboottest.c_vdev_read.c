
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_t ;
typedef int off_t ;


 size_t pread (int,void*,size_t,int ) ;

__attribute__((used)) static int
vdev_read(vdev_t *vdev, void *priv, off_t off, void *buf, size_t bytes)
{
 int fd = *(int *)priv;

 if (pread(fd, buf, bytes, off) != bytes)
  return (-1);
 return (0);
}
