
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {size_t iov_len; char* iov_base; } ;


 size_t MIN (size_t,size_t) ;

void
seek_iov(const struct iovec *iov1, int niov1, struct iovec *iov2, int *niov2,
    size_t seek)
{
 size_t remainder = 0;
 size_t left = seek;
 int i, j;

 for (i = 0; i < niov1; i++) {
  size_t toseek = MIN(left, iov1[i].iov_len);
  left -= toseek;

  if (toseek == iov1[i].iov_len)
   continue;

  if (left == 0) {
   remainder = toseek;
   break;
  }
 }

 for (j = i; j < niov1; j++) {
  iov2[j - i].iov_base = (char *)iov1[j].iov_base + remainder;
  iov2[j - i].iov_len = iov1[j].iov_len - remainder;
  remainder = 0;
 }

 *niov2 = j - i;
}
