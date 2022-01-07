
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETHER_HDR_LEN ;
 int ETHER_VLAN_ENCAP_LEN ;
 int MCLBYTES ;
 int MJUM9BYTES ;
 int MJUMPAGESIZE ;
 int MXGEFW_PAD ;

__attribute__((used)) static void
mxge_choose_params(int mtu, int *big_buf_size, int *cl_size, int *nbufs)
{
 int bufsize = mtu + ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN + MXGEFW_PAD;

 if (bufsize < MCLBYTES) {

  *big_buf_size = MCLBYTES;
  *cl_size = MCLBYTES;
  *nbufs = 1;
  return;
 }

 if (bufsize < MJUMPAGESIZE) {

  *big_buf_size = MJUMPAGESIZE;
  *cl_size = MJUMPAGESIZE;
  *nbufs = 1;
  return;
 }
 *cl_size = MJUM9BYTES;
 *big_buf_size = MJUM9BYTES;
 *nbufs = 1;

}
