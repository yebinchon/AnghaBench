
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmreq_header {int nr_reqtype; } ;
struct TestContext {char* ifname_ext; int fd; } ;


 int NETMAP_REQ_SYNC_KLOOP_STOP ;
 int NIOCCTRL ;
 int ioctl (int ,int ,struct nmreq_header*) ;
 int nmreq_hdr_init (struct nmreq_header*,char*) ;
 int perror (char*) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
sync_kloop_stop(struct TestContext *ctx)
{
 struct nmreq_header hdr;
 int ret;

 printf("Testing NETMAP_REQ_SYNC_KLOOP_STOP on '%s'\n", ctx->ifname_ext);

 nmreq_hdr_init(&hdr, ctx->ifname_ext);
 hdr.nr_reqtype = NETMAP_REQ_SYNC_KLOOP_STOP;
 ret = ioctl(ctx->fd, NIOCCTRL, &hdr);
 if (ret != 0) {
  perror("ioctl(/dev/netmap, NIOCCTRL, SYNC_KLOOP_STOP)");
 }

 return ret;
}
