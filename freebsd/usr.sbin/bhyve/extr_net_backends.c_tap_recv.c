
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_backend {int fd; } ;
struct iovec {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EWOULDBLOCK ;
 int assert (int) ;
 scalar_t__ errno ;
 scalar_t__ readv (int,struct iovec*,int) ;

__attribute__((used)) static ssize_t
tap_recv(struct net_backend *be, struct iovec *iov, int iovcnt)
{
 ssize_t ret;


 assert(be->fd != -1);

 ret = readv(be->fd, iov, iovcnt);

 if (ret < 0 && errno == EWOULDBLOCK) {
  return (0);
 }

 return (ret);
}
