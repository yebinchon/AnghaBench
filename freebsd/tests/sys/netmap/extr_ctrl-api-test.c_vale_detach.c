
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vpname ;
struct nmreq_vale_detach {int dummy; } ;
struct nmreq_header {uintptr_t nr_body; int nr_reqtype; } ;
struct TestContext {char* bdgname; char* ifname_ext; int fd; } ;


 int NETMAP_REQ_VALE_DETACH ;
 int NIOCCTRL ;
 int ioctl (int ,int ,struct nmreq_header*) ;
 int nmreq_hdr_init (struct nmreq_header*,char*) ;
 int perror (char*) ;
 int printf (char*,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static int
vale_detach(struct TestContext *ctx)
{
 struct nmreq_header hdr;
 struct nmreq_vale_detach req;
 char vpname[256];
 int ret;

 snprintf(vpname, sizeof(vpname), "%s:%s", ctx->bdgname, ctx->ifname_ext);

 printf("Testing NETMAP_REQ_VALE_DETACH on '%s'\n", vpname);
 nmreq_hdr_init(&hdr, vpname);
 hdr.nr_reqtype = NETMAP_REQ_VALE_DETACH;
 hdr.nr_body = (uintptr_t)&req;
 ret = ioctl(ctx->fd, NIOCCTRL, &hdr);
 if (ret != 0) {
  perror("ioctl(/dev/netmap, NIOCCTRL, VALE_DETACH)");
  return ret;
 }

 return 0;
}
