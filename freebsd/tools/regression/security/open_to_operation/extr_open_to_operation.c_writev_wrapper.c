
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {size_t iov_len; void* iov_base; } ;
typedef int ssize_t ;


 int writev (int,struct iovec*,int) ;

__attribute__((used)) static ssize_t
writev_wrapper(int d, const void *buf, size_t nbytes)
{
 struct iovec iov;

 iov.iov_base = (void *)buf;
 iov.iov_len = nbytes;
 return (writev(d, &iov, 1));
}
