
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {int uio_iovcnt; TYPE_1__* uio_iov; } ;
struct TYPE_2__ {int iov_len; } ;



int
cuio_getptr(struct uio *uio, int loc, int *off)
{
 int ind, len;

 ind = 0;
 while (loc >= 0 && ind < uio->uio_iovcnt) {
  len = uio->uio_iov[ind].iov_len;
  if (len > loc) {
       *off = loc;
       return (ind);
  }
  loc -= len;
  ind++;
 }

 if (ind > 0 && loc == 0) {
  ind--;
  *off = uio->uio_iov[ind].iov_len;
  return (ind);
 }

 return (-1);
}
