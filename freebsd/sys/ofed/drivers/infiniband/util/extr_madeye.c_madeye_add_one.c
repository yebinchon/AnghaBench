
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct madeye_port {void* gsi_agent; void* smi_agent; } ;
struct ib_device {scalar_t__ node_type; int phys_port_cnt; } ;


 int GFP_KERNEL ;
 int IB_MAD_SNOOP_RECVS ;
 int IB_MAD_SNOOP_SEND_COMPLETIONS ;
 int IB_QPT_GSI ;
 int IB_QPT_SMI ;
 scalar_t__ RDMA_NODE_IB_SWITCH ;
 void* ib_register_mad_snoop (struct ib_device*,int,int ,int,int ,int ,struct madeye_port*) ;
 int ib_set_client_data (struct ib_device*,int *,struct madeye_port*) ;
 struct madeye_port* kmalloc (int,int ) ;
 int madeye_client ;
 int recv_gsi_handler ;
 int recv_smi_handler ;
 int snoop_gsi_handler ;
 int snoop_smi_handler ;

__attribute__((used)) static void madeye_add_one(struct ib_device *device)
{
 struct madeye_port *port;
 int reg_flags;
 u8 i, s, e;

 if (device->node_type == RDMA_NODE_IB_SWITCH) {
  s = 0;
  e = 0;
 } else {
  s = 1;
  e = device->phys_port_cnt;
 }

 port = kmalloc(sizeof *port * (e - s + 1), GFP_KERNEL);
 if (!port)
  goto out;

 reg_flags = IB_MAD_SNOOP_SEND_COMPLETIONS | IB_MAD_SNOOP_RECVS;
 for (i = 0; i <= e - s; i++) {
  port[i].smi_agent = ib_register_mad_snoop(device, i + s,
         IB_QPT_SMI,
         reg_flags,
         snoop_smi_handler,
         recv_smi_handler,
         &port[i]);
  port[i].gsi_agent = ib_register_mad_snoop(device, i + s,
         IB_QPT_GSI,
         reg_flags,
         snoop_gsi_handler,
         recv_gsi_handler,
         &port[i]);
 }

out:
 ib_set_client_data(device, &madeye_client, port);
}
