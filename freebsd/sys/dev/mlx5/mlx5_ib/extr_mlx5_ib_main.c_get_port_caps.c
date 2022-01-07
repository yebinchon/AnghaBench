
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_ib_dev {TYPE_2__* mdev; int ib_dev; } ;
struct ib_udata {int outlen; int inlen; } ;
struct ib_port_attr {int gid_tbl_len; int max_pkeys; } ;
struct ib_device_attr {int gid_tbl_len; int max_pkeys; } ;
struct TYPE_4__ {TYPE_1__* port_caps; } ;
struct TYPE_3__ {int gid_table_len; int pkey_table_len; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_CAP_GEN (TYPE_2__*,int ) ;
 int kfree (struct ib_port_attr*) ;
 struct ib_port_attr* kmalloc (int,int ) ;
 int mlx5_ib_dbg (struct mlx5_ib_dev*,char*,int ,int ) ;
 int mlx5_ib_query_device (int *,struct ib_port_attr*,struct ib_udata*) ;
 int mlx5_ib_query_port (int *,int,struct ib_port_attr*) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int,...) ;
 int num_ports ;

__attribute__((used)) static int get_port_caps(struct mlx5_ib_dev *dev)
{
 struct ib_device_attr *dprops = ((void*)0);
 struct ib_port_attr *pprops = ((void*)0);
 int err = -ENOMEM;
 int port;
 struct ib_udata uhw = {.inlen = 0, .outlen = 0};

 pprops = kmalloc(sizeof(*pprops), GFP_KERNEL);
 if (!pprops)
  goto out;

 dprops = kmalloc(sizeof(*dprops), GFP_KERNEL);
 if (!dprops)
  goto out;

 err = mlx5_ib_query_device(&dev->ib_dev, dprops, &uhw);
 if (err) {
  mlx5_ib_warn(dev, "query_device failed %d\n", err);
  goto out;
 }

 for (port = 1; port <= MLX5_CAP_GEN(dev->mdev, num_ports); port++) {
  err = mlx5_ib_query_port(&dev->ib_dev, port, pprops);
  if (err) {
   mlx5_ib_warn(dev, "query_port %d failed %d\n",
         port, err);
   break;
  }
  dev->mdev->port_caps[port - 1].pkey_table_len =
      dprops->max_pkeys;
  dev->mdev->port_caps[port - 1].gid_table_len =
      pprops->gid_tbl_len;
  mlx5_ib_dbg(dev, "pkey_table_len %d, gid_table_len %d\n",
       dprops->max_pkeys, pprops->gid_tbl_len);
 }

out:
 kfree(pprops);
 kfree(dprops);

 return err;
}
