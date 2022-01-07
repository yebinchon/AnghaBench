
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int iov_base; int iov_len; } ;
typedef int ssize_t ;


 size_t MIN (int ,size_t) ;
 int free (struct iovec*) ;
 struct iovec* malloc (int) ;
 int memcpy (int ,void const*,size_t) ;
 int seek_iov (struct iovec*,int,struct iovec*,int*,size_t) ;

ssize_t
buf_to_iov(const void *buf, size_t buflen, struct iovec *iov, int niov,
    size_t seek)
{
 struct iovec *diov;
 int ndiov, i;
 size_t off = 0, len;

 if (seek > 0) {
  diov = malloc(sizeof(struct iovec) * niov);
  seek_iov(iov, niov, diov, &ndiov, seek);
 } else {
  diov = iov;
  ndiov = niov;
 }

 for (i = 0; i < ndiov && off < buflen; i++) {
  len = MIN(diov[i].iov_len, buflen - off);
  memcpy(diov[i].iov_base, buf + off, len);
  off += len;
 }

 if (seek > 0)
  free(diov);

 return ((ssize_t)off);
}
