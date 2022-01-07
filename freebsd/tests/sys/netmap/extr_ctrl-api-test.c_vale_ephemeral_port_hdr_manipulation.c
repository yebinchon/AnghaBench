
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {scalar_t__ nr_hdr_len; int nr_mode; int ifname_ext; } ;


 int NR_REG_ALL_NIC ;
 scalar_t__ VIRTIO_NET_HDR_LEN ;
 scalar_t__ VIRTIO_NET_HDR_LEN_WITH_MERGEABLE_RXBUFS ;
 int port_hdr_set_and_get (struct TestContext*) ;
 int port_register (struct TestContext*) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static int
vale_ephemeral_port_hdr_manipulation(struct TestContext *ctx)
{
 int ret;

 strncpy(ctx->ifname_ext, "vale:eph0", sizeof(ctx->ifname_ext));
 ctx->nr_mode = NR_REG_ALL_NIC;
 if ((ret = port_register(ctx))) {
  return ret;
 }

 ctx->nr_hdr_len = VIRTIO_NET_HDR_LEN_WITH_MERGEABLE_RXBUFS;
 if ((ret = port_hdr_set_and_get(ctx))) {
  return ret;
 }
 ctx->nr_hdr_len = 0;
 if ((ret = port_hdr_set_and_get(ctx))) {
  return ret;
 }
 ctx->nr_hdr_len = VIRTIO_NET_HDR_LEN;
 if ((ret = port_hdr_set_and_get(ctx))) {
  return ret;
 }
 return 0;
}
