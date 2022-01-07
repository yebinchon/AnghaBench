
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_net_rxhdr {int vrh_bufs; } ;
struct net_backend {unsigned int fe_vnet_hdr_len; unsigned int be_vnet_hdr_len; int (* recv ) (struct net_backend*,struct iovec*,int) ;} ;
struct iovec {struct virtio_net_rxhdr* iov_base; } ;
typedef int ssize_t ;


 unsigned int VNET_HDR_LEN ;
 int assert (int) ;
 struct iovec* iov_trim (struct iovec*,int*,unsigned int) ;
 int memset (struct virtio_net_rxhdr*,int ,unsigned int) ;
 int stub1 (struct net_backend*,struct iovec*,int) ;

ssize_t
netbe_recv(struct net_backend *be, struct iovec *iov, int iovcnt)
{

 unsigned int hlen = be->fe_vnet_hdr_len;
 int ret;

 assert(be != ((void*)0));

 if (hlen && hlen != be->be_vnet_hdr_len) {




  struct virtio_net_rxhdr *vh;

  assert(be->be_vnet_hdr_len == 0);





  vh = iov[0].iov_base;
  iov = iov_trim(iov, &iovcnt, hlen);





  memset(vh, 0, hlen);
  if (hlen == VNET_HDR_LEN) {
   vh->vrh_bufs = 1;
  }
 }

 ret = be->recv(be, iov, iovcnt);
 if (ret > 0) {
  ret += hlen;
 }

 return (ret);
}
