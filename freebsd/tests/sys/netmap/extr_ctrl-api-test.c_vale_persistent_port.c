
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmreq_vale_newif {int nr_rx_rings; int nr_tx_rings; int nr_rx_slots; int nr_tx_slots; int nr_mem_id; } ;
struct nmreq_header {uintptr_t nr_body; int nr_reqtype; } ;
struct TestContext {char* ifname_ext; int fd; int nr_rx_rings; int nr_tx_rings; int nr_rx_slots; int nr_tx_slots; int nr_mem_id; } ;
typedef int req ;


 int NETMAP_REQ_VALE_DELIF ;
 int NETMAP_REQ_VALE_NEWIF ;
 int NIOCCTRL ;
 int ioctl (int ,int ,struct nmreq_header*) ;
 int memset (struct nmreq_vale_newif*,int ,int) ;
 int nmreq_hdr_init (struct nmreq_header*,char*) ;
 int perror (char*) ;
 int printf (char*,char*) ;
 int strncpy (char*,char*,int) ;
 int vale_attach_detach (struct TestContext*) ;

__attribute__((used)) static int
vale_persistent_port(struct TestContext *ctx)
{
 struct nmreq_vale_newif req;
 struct nmreq_header hdr;
 int result;
 int ret;

 strncpy(ctx->ifname_ext, "per4", sizeof(ctx->ifname_ext));

 printf("Testing NETMAP_REQ_VALE_NEWIF on '%s'\n", ctx->ifname_ext);

 nmreq_hdr_init(&hdr, ctx->ifname_ext);
 hdr.nr_reqtype = NETMAP_REQ_VALE_NEWIF;
 hdr.nr_body = (uintptr_t)&req;
 memset(&req, 0, sizeof(req));
 req.nr_mem_id = ctx->nr_mem_id;
 req.nr_tx_slots = ctx->nr_tx_slots;
 req.nr_rx_slots = ctx->nr_rx_slots;
 req.nr_tx_rings = ctx->nr_tx_rings;
 req.nr_rx_rings = ctx->nr_rx_rings;
 ret = ioctl(ctx->fd, NIOCCTRL, &hdr);
 if (ret != 0) {
  perror("ioctl(/dev/netmap, NIOCCTRL, VALE_NEWIF)");
  return ret;
 }


 result = vale_attach_detach(ctx);

 printf("Testing NETMAP_REQ_VALE_DELIF on '%s'\n", ctx->ifname_ext);
 hdr.nr_reqtype = NETMAP_REQ_VALE_DELIF;
 hdr.nr_body = (uintptr_t)((void*)0);
 ret = ioctl(ctx->fd, NIOCCTRL, &hdr);
 if (ret != 0) {
  perror("ioctl(/dev/netmap, NIOCCTRL, VALE_NEWIF)");
  if (result == 0) {
   result = ret;
  }
 }

 return result;
}
