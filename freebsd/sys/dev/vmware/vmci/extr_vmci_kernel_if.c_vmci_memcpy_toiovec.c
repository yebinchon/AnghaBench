
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct iovec {scalar_t__ iov_len; void* iov_base; } ;


 size_t MIN (scalar_t__,size_t) ;
 int memcpy (void*,int *,size_t) ;

__attribute__((used)) static inline void
vmci_memcpy_toiovec(struct iovec *iov, uint8_t *src, size_t len)
{

 while (len > 0) {
  if (iov->iov_len) {
   size_t to_copy = MIN(iov->iov_len, len);
   memcpy(iov->iov_base, src, to_copy);
   src += to_copy;
   len -= to_copy;
   iov->iov_base = (void *)((uintptr_t) iov->iov_base +
       to_copy);
   iov->iov_len -= to_copy;
  }
  iov++;
 }
}
