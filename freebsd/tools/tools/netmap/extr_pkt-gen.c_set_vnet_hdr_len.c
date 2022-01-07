
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


 int D (char*,int) ;
 int NETMAP_API ;
 int NETMAP_BDG_VNET_HDR ;
 int NIOCREGIF ;
 int bcopy (int ,int ,int) ;
 int ioctl (int ,int ,struct nmreq*) ;
 int memset (struct nmreq*,int ,int) ;

__attribute__((used)) static void
set_vnet_hdr_len(struct glob_arg *g)
{
 int err, l = g->virt_header;
 struct nmreq req;

 if (l == 0)
  return;

 memset(&req, 0, sizeof(req));
 bcopy(g->nmd->req.nr_name, req.nr_name, sizeof(req.nr_name));
 req.nr_version = NETMAP_API;
 req.nr_cmd = NETMAP_BDG_VNET_HDR;
 req.nr_arg1 = l;
 err = ioctl(g->main_fd, NIOCREGIF, &req);
 if (err) {
  D("Unable to set virtio-net header length %d", l);
 }
}
