
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmreq_sync_kloop_start {int sleep_us; } ;
struct nmreq_header {uintptr_t nr_body; uintptr_t nr_options; int nr_reqtype; } ;
struct TestContext {char* ifname_ext; scalar_t__ sem; int fd; scalar_t__ nr_opt; } ;
typedef int req ;


 int NETMAP_REQ_SYNC_KLOOP_START ;
 int NIOCCTRL ;
 scalar_t__ THRET_FAILURE ;
 scalar_t__ THRET_SUCCESS ;
 int ioctl (int ,int ,struct nmreq_header*) ;
 int memset (struct nmreq_sync_kloop_start*,int ,int) ;
 int nmreq_hdr_init (struct nmreq_header*,char*) ;
 int perror (char*) ;
 int printf (char*,char*) ;
 int pthread_exit (void*) ;
 int sem_post (scalar_t__) ;

__attribute__((used)) static void *
sync_kloop_worker(void *opaque)
{
 struct TestContext *ctx = opaque;
 struct nmreq_sync_kloop_start req;
 struct nmreq_header hdr;
 int ret;

 printf("Testing NETMAP_REQ_SYNC_KLOOP_START on '%s'\n", ctx->ifname_ext);

 nmreq_hdr_init(&hdr, ctx->ifname_ext);
 hdr.nr_reqtype = NETMAP_REQ_SYNC_KLOOP_START;
 hdr.nr_body = (uintptr_t)&req;
 hdr.nr_options = (uintptr_t)ctx->nr_opt;
 memset(&req, 0, sizeof(req));
 req.sleep_us = 500;
 ret = ioctl(ctx->fd, NIOCCTRL, &hdr);
 if (ret != 0) {
  perror("ioctl(/dev/netmap, NIOCCTRL, SYNC_KLOOP_START)");
 }

 if (ctx->sem) {
  sem_post(ctx->sem);
 }

 pthread_exit(ret ? (void *)THRET_FAILURE : (void *)THRET_SUCCESS);
}
