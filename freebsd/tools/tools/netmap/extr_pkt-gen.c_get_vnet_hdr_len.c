
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nmreq {int nr_arg1; int nr_cmd; int nr_version; int nr_name; } ;
struct glob_arg {int virt_header; int main_fd; TYPE_2__* nmd; } ;
typedef int req ;
struct TYPE_3__ {int nr_name; } ;
struct TYPE_4__ {TYPE_1__ req; } ;


 int D (char*,...) ;
 int NETMAP_API ;
 int NETMAP_VNET_HDR_GET ;
 int NIOCREGIF ;
 int bcopy (int ,int ,int) ;
 int ioctl (int ,int ,struct nmreq*) ;
 int memset (struct nmreq*,int ,int) ;

__attribute__((used)) static void
get_vnet_hdr_len(struct glob_arg *g)
{
 struct nmreq req;
 int err;

 memset(&req, 0, sizeof(req));
 bcopy(g->nmd->req.nr_name, req.nr_name, sizeof(req.nr_name));
 req.nr_version = NETMAP_API;
 req.nr_cmd = NETMAP_VNET_HDR_GET;
 err = ioctl(g->main_fd, NIOCREGIF, &req);
 if (err) {
  D("Unable to get virtio-net header length");
  return;
 }

 g->virt_header = req.nr_arg1;
 if (g->virt_header) {
  D("Port requires virtio-net header, length = %d",
    g->virt_header);
 }
}
