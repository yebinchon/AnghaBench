
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_init_ib_param {int pkey_cap; int gid_cap; int mtu_cap; int vl_cap; int port_width; } ;
struct TYPE_2__ {int pkey_table_len; int gid_table_len; int mtu_cap; int vl_cap; int port_width_cap; } ;
struct mthca_dev {TYPE_1__ limits; } ;


 int memset (struct mthca_init_ib_param*,int ,int) ;
 int mthca_INIT_IB (struct mthca_dev*,struct mthca_init_ib_param*,int) ;
 int mthca_warn (struct mthca_dev*,char*,int) ;

__attribute__((used)) static void init_port(struct mthca_dev *dev, int port)
{
 int err;
 struct mthca_init_ib_param param;

 memset(&param, 0, sizeof param);

 param.port_width = dev->limits.port_width_cap;
 param.vl_cap = dev->limits.vl_cap;
 param.mtu_cap = dev->limits.mtu_cap;
 param.gid_cap = dev->limits.gid_table_len;
 param.pkey_cap = dev->limits.pkey_table_len;

 err = mthca_INIT_IB(dev, &param, port);
 if (err)
  mthca_warn(dev, "INIT_IB failed, return code %d.\n", err);
}
