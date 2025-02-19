
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct ib_smp {int* data; int attr_mod; int attr_id; } ;
struct ib_port_attr {int lmc; int sm_sl; int state; int phys_state; int max_msg_sz; int active_width; int active_speed; int max_mtu; int active_mtu; int subnet_timeout; int max_vl_num; int init_type_reply; void* qkey_viol_cntr; void* bad_pkey_cntr; int pkey_tbl_len; int gid_tbl_len; int port_cap_flags; void* sm_lid; void* lid; } ;
struct ib_device {int dummy; } ;
typedef int __be32 ;
typedef int __be16 ;
struct TYPE_4__ {int pkey_table_len; int gid_table_len; } ;
struct TYPE_5__ {TYPE_1__ limits; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_SMP_ATTR_PORT_INFO ;
 void* be16_to_cpup (int *) ;
 int be32_to_cpup (int *) ;
 int cpu_to_be32 (int ) ;
 int init_query_mad (struct ib_smp*) ;
 int kfree (struct ib_smp*) ;
 struct ib_smp* kmalloc (int,int ) ;
 struct ib_smp* kzalloc (int,int ) ;
 int memset (struct ib_port_attr*,int ,int) ;
 int mthca_MAD_IFC (TYPE_2__*,int,int,int ,int *,int *,struct ib_smp*,struct ib_smp*) ;
 TYPE_2__* to_mdev (struct ib_device*) ;

__attribute__((used)) static int mthca_query_port(struct ib_device *ibdev,
       u8 port, struct ib_port_attr *props)
{
 struct ib_smp *in_mad = ((void*)0);
 struct ib_smp *out_mad = ((void*)0);
 int err = -ENOMEM;

 in_mad = kzalloc(sizeof *in_mad, GFP_KERNEL);
 out_mad = kmalloc(sizeof *out_mad, GFP_KERNEL);
 if (!in_mad || !out_mad)
  goto out;

 memset(props, 0, sizeof *props);

 init_query_mad(in_mad);
 in_mad->attr_id = IB_SMP_ATTR_PORT_INFO;
 in_mad->attr_mod = cpu_to_be32(port);

 err = mthca_MAD_IFC(to_mdev(ibdev), 1, 1,
       port, ((void*)0), ((void*)0), in_mad, out_mad);
 if (err)
  goto out;

 props->lid = be16_to_cpup((__be16 *) (out_mad->data + 16));
 props->lmc = out_mad->data[34] & 0x7;
 props->sm_lid = be16_to_cpup((__be16 *) (out_mad->data + 18));
 props->sm_sl = out_mad->data[36] & 0xf;
 props->state = out_mad->data[32] & 0xf;
 props->phys_state = out_mad->data[33] >> 4;
 props->port_cap_flags = be32_to_cpup((__be32 *) (out_mad->data + 20));
 props->gid_tbl_len = to_mdev(ibdev)->limits.gid_table_len;
 props->max_msg_sz = 0x80000000;
 props->pkey_tbl_len = to_mdev(ibdev)->limits.pkey_table_len;
 props->bad_pkey_cntr = be16_to_cpup((__be16 *) (out_mad->data + 46));
 props->qkey_viol_cntr = be16_to_cpup((__be16 *) (out_mad->data + 48));
 props->active_width = out_mad->data[31] & 0xf;
 props->active_speed = out_mad->data[35] >> 4;
 props->max_mtu = out_mad->data[41] & 0xf;
 props->active_mtu = out_mad->data[36] >> 4;
 props->subnet_timeout = out_mad->data[51] & 0x1f;
 props->max_vl_num = out_mad->data[37] >> 4;
 props->init_type_reply = out_mad->data[41] >> 4;

 out:
 kfree(in_mad);
 kfree(out_mad);
 return err;
}
