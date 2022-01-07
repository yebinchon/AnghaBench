
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {size_t iov_len; void* iov_base; } ;
typedef int ssize_t ;


 int pwritev (int,struct iovec*,int,int ) ;

__attribute__((used)) static ssize_t
pwritev_wrapper(int d, const void *buf, size_t nbytes)
{
 struct iovec iov;

 iov.iov_base = (void *)buf;
 iov.iov_len = nbytes;
 return (pwritev(d, &iov, 1, 0));
}
