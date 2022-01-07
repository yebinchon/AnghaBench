
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_char ;
struct uio {scalar_t__ uio_resid; int uio_offset; } ;
struct cdev {int dummy; } ;


 int CKSUM_FIRST ;
 int CKSUM_LAST ;
 int CKSUM_LSB ;
 int CKSUM_MSB ;
 int EIO ;
 int NVRAM_FIRST ;
 int NVRAM_LAST ;
 int nvram_lock ;
 int rtcin (int) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int uiomove (int*,int,struct uio*) ;
 int writertc (int,int) ;

__attribute__((used)) static int
nvram_write(struct cdev *dev, struct uio *uio, int flags)
{
 int nv_off;
 u_char v;
 int error = 0;
 int i;
 uint16_t sum;

 sx_xlock(&nvram_lock);


 sum = rtcin(NVRAM_FIRST + CKSUM_MSB) << 8 |
       rtcin(NVRAM_FIRST + CKSUM_LSB);
 for (i = CKSUM_FIRST; i <= CKSUM_LAST; i++)
  sum -= rtcin(NVRAM_FIRST + i);
 if (sum != 0) {
  sx_xunlock(&nvram_lock);
  return (EIO);
 }

 while (uio->uio_resid > 0 && error == 0) {
  nv_off = uio->uio_offset + NVRAM_FIRST;
  if (nv_off < NVRAM_FIRST || nv_off >= NVRAM_LAST) {
   sx_xunlock(&nvram_lock);
   return (0);
  }

  error = uiomove(&v, 1, uio);
  writertc(nv_off, v);
 }

 sum = 0;
 for (i = CKSUM_FIRST; i <= CKSUM_LAST; i++)
  sum += rtcin(NVRAM_FIRST + i);
 writertc(NVRAM_FIRST + CKSUM_MSB, sum >> 8);
 writertc(NVRAM_FIRST + CKSUM_LSB, sum);
 sx_xunlock(&nvram_lock);
 return (error);
}
