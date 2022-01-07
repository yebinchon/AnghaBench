
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg; } ;
union nic_mbx {TYPE_1__ msg; } ;
struct nicvf {int dev; } ;


 int NIC_MBOX_MSG_CFG_DONE ;
 int TRUE ;
 int device_printf (int ,char*) ;
 int nicvf_config_data_transfer (struct nicvf*,int ) ;
 int nicvf_qset_config (struct nicvf*,int ) ;
 int nicvf_write_to_mbx (struct nicvf*,union nic_mbx*) ;

__attribute__((used)) static int
nicvf_init_resources(struct nicvf *nic)
{
 int err;
 union nic_mbx mbx = {};

 mbx.msg.msg = NIC_MBOX_MSG_CFG_DONE;


 nicvf_qset_config(nic, TRUE);


 err = nicvf_config_data_transfer(nic, TRUE);
 if (err) {
  device_printf(nic->dev,
      "Failed to alloc/config VF's QSet resources\n");
  return (err);
 }


 nicvf_write_to_mbx(nic, &mbx);

 return (0);
}
