
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct uio {scalar_t__ uio_resid; int uio_offset; } ;
struct cdev {int dummy; } ;


 int NVRAM_FIRST ;
 int NVRAM_LAST ;
 int rtcin (int) ;
 int uiomove (int *,int,struct uio*) ;

__attribute__((used)) static int
nvram_read(struct cdev *dev, struct uio *uio, int flags)
{
 int nv_off;
 u_char v;
 int error = 0;

 while (uio->uio_resid > 0 && error == 0) {
  nv_off = uio->uio_offset + NVRAM_FIRST;
  if (nv_off < NVRAM_FIRST || nv_off >= NVRAM_LAST)
   return (0);

  v = rtcin(nv_off);
  error = uiomove(&v, 1, uio);
 }
 return (error);

}
