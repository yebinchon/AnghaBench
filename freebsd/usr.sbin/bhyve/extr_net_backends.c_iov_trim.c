
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {unsigned int iov_len; void* iov_base; } ;


 int assert (int) ;

__attribute__((used)) static __inline struct iovec *
iov_trim(struct iovec *iov, int *iovcnt, unsigned int tlen)
{
 struct iovec *riov;


 assert(iov[0].iov_len >= tlen);

 iov[0].iov_len -= tlen;
 if (iov[0].iov_len == 0) {
  assert(*iovcnt > 1);
  *iovcnt -= 1;
  riov = &iov[1];
 } else {
  iov[0].iov_base = (void *)((uintptr_t)iov[0].iov_base + tlen);
  riov = &iov[0];
 }

 return (riov);
}
