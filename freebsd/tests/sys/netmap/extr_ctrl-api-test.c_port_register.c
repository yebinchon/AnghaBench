
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmreq_register {unsigned long long nr_mem_id; int nr_mode; int nr_ringid; scalar_t__ nr_flags; unsigned long long nr_tx_slots; unsigned long long nr_rx_slots; unsigned long long nr_tx_rings; unsigned long long nr_host_tx_rings; unsigned long long nr_host_rx_rings; unsigned long long nr_rx_rings; unsigned long long nr_extra_bufs; scalar_t__ nr_memsize; scalar_t__ nr_offset; } ;
struct nmreq_header {uintptr_t nr_body; uintptr_t nr_options; int nr_reqtype; } ;
struct TestContext {int nr_mode; int nr_ringid; scalar_t__ nr_flags; unsigned long long nr_mem_id; unsigned long long nr_tx_slots; unsigned long long nr_rx_slots; unsigned long long nr_tx_rings; unsigned long long nr_host_tx_rings; unsigned long long nr_host_rx_rings; unsigned long long nr_rx_rings; unsigned long long nr_extra_bufs; int fd; scalar_t__ nr_opt; int ifname_ext; } ;
typedef int req ;


 int NETMAP_REQ_REGISTER ;
 int NIOCCTRL ;
 int ioctl (int ,int ,struct nmreq_header*) ;
 int memset (struct nmreq_register*,int ,int) ;
 int nmreq_hdr_init (struct nmreq_header*,int ) ;
 int perror (char*) ;
 int printf (char*,unsigned long long,...) ;

__attribute__((used)) static int
port_register(struct TestContext *ctx)
{
 struct nmreq_register req;
 struct nmreq_header hdr;
 int success;
 int ret;

 printf("Testing NETMAP_REQ_REGISTER(mode=%d,ringid=%d,"
        "flags=0x%llx) on '%s'\n",
        ctx->nr_mode, ctx->nr_ringid, (unsigned long long)ctx->nr_flags,
        ctx->ifname_ext);

 nmreq_hdr_init(&hdr, ctx->ifname_ext);
 hdr.nr_reqtype = NETMAP_REQ_REGISTER;
 hdr.nr_body = (uintptr_t)&req;
 hdr.nr_options = (uintptr_t)ctx->nr_opt;
 memset(&req, 0, sizeof(req));
 req.nr_mem_id = ctx->nr_mem_id;
 req.nr_mode = ctx->nr_mode;
 req.nr_ringid = ctx->nr_ringid;
 req.nr_flags = ctx->nr_flags;
 req.nr_tx_slots = ctx->nr_tx_slots;
 req.nr_rx_slots = ctx->nr_rx_slots;
 req.nr_tx_rings = ctx->nr_tx_rings;
 req.nr_host_tx_rings = ctx->nr_host_tx_rings;
 req.nr_host_rx_rings = ctx->nr_host_rx_rings;
 req.nr_rx_rings = ctx->nr_rx_rings;
 req.nr_extra_bufs = ctx->nr_extra_bufs;
 ret = ioctl(ctx->fd, NIOCCTRL, &hdr);
 if (ret != 0) {
  perror("ioctl(/dev/netmap, NIOCCTRL, REGISTER)");
  return ret;
 }
 printf("nr_offset 0x%llx\n", (unsigned long long)req.nr_offset);
 printf("nr_memsize %llu\n", (unsigned long long)req.nr_memsize);
 printf("nr_tx_slots %u\n", req.nr_tx_slots);
 printf("nr_rx_slots %u\n", req.nr_rx_slots);
 printf("nr_tx_rings %u\n", req.nr_tx_rings);
 printf("nr_rx_rings %u\n", req.nr_rx_rings);
 printf("nr_host_tx_rings %u\n", req.nr_host_tx_rings);
 printf("nr_host_rx_rings %u\n", req.nr_host_rx_rings);
 printf("nr_mem_id %u\n", req.nr_mem_id);
 printf("nr_extra_bufs %u\n", req.nr_extra_bufs);

 success = req.nr_memsize && (ctx->nr_mode == req.nr_mode) &&
         (ctx->nr_ringid == req.nr_ringid) &&
         (ctx->nr_flags == req.nr_flags) &&
         ((!ctx->nr_tx_slots && req.nr_tx_slots) ||
   (ctx->nr_tx_slots == req.nr_tx_slots)) &&
         ((!ctx->nr_rx_slots && req.nr_rx_slots) ||
   (ctx->nr_rx_slots == req.nr_rx_slots)) &&
         ((!ctx->nr_tx_rings && req.nr_tx_rings) ||
   (ctx->nr_tx_rings == req.nr_tx_rings)) &&
         ((!ctx->nr_rx_rings && req.nr_rx_rings) ||
   (ctx->nr_rx_rings == req.nr_rx_rings)) &&
         ((!ctx->nr_host_tx_rings && req.nr_host_tx_rings) ||
   (ctx->nr_host_tx_rings == req.nr_host_tx_rings)) &&
         ((!ctx->nr_host_rx_rings && req.nr_host_rx_rings) ||
   (ctx->nr_host_rx_rings == req.nr_host_rx_rings)) &&
         ((!ctx->nr_mem_id && req.nr_mem_id) ||
   (ctx->nr_mem_id == req.nr_mem_id)) &&
         (ctx->nr_extra_bufs == req.nr_extra_bufs);
 if (!success) {
  return -1;
 }


 ctx->nr_tx_slots = req.nr_tx_slots;
 ctx->nr_rx_slots = req.nr_rx_slots;
 ctx->nr_tx_rings = req.nr_tx_rings;
 ctx->nr_rx_rings = req.nr_rx_rings;
 ctx->nr_host_tx_rings = req.nr_host_tx_rings;
 ctx->nr_host_rx_rings = req.nr_host_rx_rings;
 ctx->nr_mem_id = req.nr_mem_id;
 ctx->nr_extra_bufs = req.nr_extra_bufs;

 return 0;
}
