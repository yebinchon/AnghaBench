
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmreq {int nr_arg1; int nr_cmd; } ;
struct netmap_priv {int ifname; } ;
struct net_backend {int be_vnet_hdr_len; int fd; scalar_t__ opaque; } ;


 int NETMAP_BDG_VNET_HDR ;
 int NIOCREGIF ;
 int WPRINTF (char*) ;
 int ioctl (int ,int ,struct nmreq*) ;
 int nmreq_init (struct nmreq*,int ) ;

__attribute__((used)) static int
netmap_set_vnet_hdr_len(struct net_backend *be, int vnet_hdr_len)
{
 int err;
 struct nmreq req;
 struct netmap_priv *priv = (struct netmap_priv *)be->opaque;

 nmreq_init(&req, priv->ifname);
 req.nr_cmd = NETMAP_BDG_VNET_HDR;
 req.nr_arg1 = vnet_hdr_len;
 err = ioctl(be->fd, NIOCREGIF, &req);
 if (err) {
  WPRINTF(("Unable to set vnet header length %d\n",
    vnet_hdr_len));
  return (err);
 }

 be->be_vnet_hdr_len = vnet_hdr_len;

 return (0);
}
