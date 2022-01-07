
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct net_backend {int dummy; } ;
struct iovec {int iov_len; int * iov_base; } ;
typedef int ssize_t ;
typedef int dummybuf ;


 int netbe_recv (struct net_backend*,struct iovec*,int) ;

ssize_t
netbe_rx_discard(struct net_backend *be)
{





 static uint8_t dummybuf[65536 + 64];
 struct iovec iov;

 iov.iov_base = dummybuf;
 iov.iov_len = sizeof(dummybuf);

 return netbe_recv(be, &iov, 1);
}
