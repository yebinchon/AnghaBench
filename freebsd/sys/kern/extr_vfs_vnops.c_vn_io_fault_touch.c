
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {scalar_t__ uio_rw; } ;


 int EFAULT ;
 scalar_t__ UIO_READ ;
 int fubyte (char*) ;
 int subyte (char*,int) ;

__attribute__((used)) static int
vn_io_fault_touch(char *base, const struct uio *uio)
{
 int r;

 r = fubyte(base);
 if (r == -1 || (uio->uio_rw == UIO_READ && subyte(base, r) == -1))
  return (EFAULT);
 return (0);
}
