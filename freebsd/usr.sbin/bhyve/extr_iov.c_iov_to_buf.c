
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {scalar_t__ iov_len; int iov_base; } ;
typedef int ssize_t ;


 size_t count_iov (struct iovec const*,int) ;
 int memcpy (void*,int ,scalar_t__) ;
 void* realloc (void*,size_t) ;

ssize_t
iov_to_buf(const struct iovec *iov, int niov, void **buf)
{
 size_t ptr, total;
 int i;

 total = count_iov(iov, niov);
 *buf = realloc(*buf, total);
 if (*buf == ((void*)0))
  return (-1);

 for (i = 0, ptr = 0; i < niov; i++) {
  memcpy(*buf + ptr, iov[i].iov_base, iov[i].iov_len);
  ptr += iov[i].iov_len;
 }

 return (total);
}
