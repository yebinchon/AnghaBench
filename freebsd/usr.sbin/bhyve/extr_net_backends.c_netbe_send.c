
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_backend {scalar_t__ be_vnet_hdr_len; scalar_t__ fe_vnet_hdr_len; int (* send ) (struct net_backend*,struct iovec*,int) ;} ;
struct iovec {int dummy; } ;
typedef int ssize_t ;


 int assert (int) ;
 struct iovec* iov_trim (struct iovec*,int*,scalar_t__) ;
 int stub1 (struct net_backend*,struct iovec*,int) ;

ssize_t
netbe_send(struct net_backend *be, struct iovec *iov, int iovcnt)
{

 assert(be != ((void*)0));
 if (be->be_vnet_hdr_len != be->fe_vnet_hdr_len) {





  assert(be->be_vnet_hdr_len == 0);
  iov = iov_trim(iov, &iovcnt, be->fe_vnet_hdr_len);
 }

 return (be->send(be, iov, iovcnt));
}
