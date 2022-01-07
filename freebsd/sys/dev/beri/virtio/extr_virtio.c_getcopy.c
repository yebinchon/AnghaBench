
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int iov_len; int iov_base; } ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 struct iovec* malloc (int,int ,int ) ;

struct iovec *
getcopy(struct iovec *iov, int n)
{
 struct iovec *tiov;
 int i;

 tiov = malloc(n * sizeof(struct iovec), M_DEVBUF, M_NOWAIT);
 for (i = 0; i < n; i++) {
  tiov[i].iov_base = iov[i].iov_base;
  tiov[i].iov_len = iov[i].iov_len;
 }

 return (tiov);
}
