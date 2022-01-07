
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct iovec {int iov_len; scalar_t__ iov_base; } ;


 int MIN (int,int) ;
 int e82545_buf_checksum (scalar_t__,int) ;
 int e82545_carry (int) ;

__attribute__((used)) static uint16_t
e82545_iov_checksum(struct iovec *iov, int iovcnt, int off, int len)
{
 int now, odd;
 uint32_t sum = 0, s;


 while (iovcnt > 0 && iov->iov_len <= off && off > 0) {
  off -= iov->iov_len;
  iov++;
  iovcnt--;
 }


 odd = 0;
 while (len > 0 && iovcnt > 0) {
  now = MIN(len, iov->iov_len - off);
  s = e82545_buf_checksum(iov->iov_base + off, now);
  sum += odd ? (s << 8) : s;
  odd ^= (now & 1);
  len -= now;
  off = 0;
  iov++;
  iovcnt--;
 }

 return (e82545_carry(sum));
}
