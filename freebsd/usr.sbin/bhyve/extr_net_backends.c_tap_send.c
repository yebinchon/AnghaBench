
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_backend {int fd; } ;
struct iovec {int dummy; } ;
typedef int ssize_t ;


 int writev (int ,struct iovec*,int) ;

__attribute__((used)) static ssize_t
tap_send(struct net_backend *be, struct iovec *iov, int iovcnt)
{
 return (writev(be->fd, iov, iovcnt));
}
